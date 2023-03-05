from base64 import standard_b64encode, standard_b64decode
import os
from math import ceil

class binfile(object):
  def __init__(self, binfilename,include_pagenumber=True,include_command=True,command_string='wb64'):
    self.filename = binfilename
    self.file = open(self.filename, 'rb')
    self.page = 0
    self.size = self.file.seek(0,os.SEEK_END)
    self.file.seek(0)
    self.pages = ceil(self.size/256)
    self.include_pagenumber = include_pagenumber
    self.include_command = include_command
    self.command_string = command_string

  def __enter__(self):
    return self

  def __exit__(self, *args):
    self.file.close()

  def __iter__(self):
    return self

  def __next__(self):
    return self.next()

  def next(self):
    page = self.file.tell()//256
    pagedata = self.file.read(256)
    if pagedata == b'':
      raise StopIteration()
    pagestring = f'{page:#08x}'
    datastring = standard_b64encode(pagedata).decode()
    return f'{self.command_string+" " if self.include_command else ""}{pagestring+" " if self.include_pagenumber else ""}{datastring}'
 
  def page(self,page):
    if page<self.pages:
      self.file.seek(page*256)
    pagestring = f'{page:#08x}'
    datastring = standard_b64encode(self.file.read(256)).decode()
    return f'{self.command_string+" " if self.include_command else ""}{pagestring+" " if self.include_pagenumber else ""}{datastring}'
 
      
