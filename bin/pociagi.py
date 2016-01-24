#!/usr/bin/python
import sys
if len(sys.argv) < 2:
  print("{} [file]".format(sys.argv[0]))
  sys.exit(1)

filepath = sys.argv[1]
rawdata = open(filepath, 'r').readlines()
data = [x.strip().split() for x in rawdata]
first = data[0]
last = data[-1]
pattern = "{} {} {}"

output = []
output.append(
  pattern.format(
    ' '.join(first[:-1]),
    'START AT',
    first[-1],
  )
)

for x in data:
  if x == first or x == last:
    continue
  output.append(
    pattern.format(
     ' '.join(x[:-2]),
     x[-2],
     x[-1],
    )
  )

output.append(
  pattern.format(
    ' '.join(last[:-1]),
    'END AT',
    last[-1],
  )
)

print("\n".join(output))

import qrcode
qr = qrcode.QRCode(
  error_correction=qrcode.constants.ERROR_CORRECT_H,
)
qr.add_data("\n".join(output))
qr.make(fit=True)
image = qr.make_image()
image.save(filepath+'.png')
