from base64 import standard_b64encode, standard_b64decode
import os
from math import ceil

class binfile(object):
  def __init__(self, binfilename,include_pagenumber=True,page_offset=0,include_command=True,command_string='wb64'):
    self.filename = binfilename
    self.file = open(self.filename, 'rb')
    self.size = self.file.seek(0,os.SEEK_END)
    self.file.seek(0)
    self.current_page = 0
    self.pages = ceil(self.size/256)
    self.include_pagenumber = include_pagenumber
    self.include_command = include_command
    self.command_string = command_string
    self.page_offset = page_offset

  def __enter__(self):
    return self

  def __exit__(self, *args):
    self.file.close()

  def __iter__(self):
    return self

  def __next__(self):
    return self.next()
  
  def __len__(self):
    return self.pages

  def more(self):
    return (self.current_page+1) < self.pages

  def next(self):
    page = self.file.tell()//256+ self.page_offset
    self.current_page = page
    pagedata = self.file.read(256)
    if pagedata == b'':
      raise StopIteration()
    if len(pagedata)<256:
      pagedata += (256-len(pagedata))*b'\x00'
    pagestring = f'{page:#08x}'
    datastring = standard_b64encode(pagedata).decode()
    return f'{self.command_string+" " if self.include_command else ""}{pagestring+" " if self.include_pagenumber else ""}{datastring}'
 
  def page(self,pageno):
    if pageno<self.pages:
      self.file.seek(pageno*256)
      return self.next()
    else:
      raise EOFError
 
  def reset(self):
    self.file.seek(0)
      
