# Copyright © 2024 Joseph Wright <joseph@cloudboss.co>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

variable "dns_ttl" {
  type        = number
  description = "DNS TTL for validation records."

  default = 60
}

variable "fqdn" {
  type        = string
  description = "Fully qualified domain name for the certificate."
}

variable "key_algorithm" {
  type        = string
  description = "The key algorithm to use for the certificate."

  default = null
}

variable "route53_zone_name" {
  type    = string
  default = "Name of the Route 53 zone to create the validation records in."
}

variable "subject_alternative_names" {
  type        = list(string)
  description = "A list of additional names that should be SANs on the certificate."

  default = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the certificate."

  default = {}
}
