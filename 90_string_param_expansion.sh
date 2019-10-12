#!/bin/bash

string="hello how are you william."

does_str_contain_william=${string/*william*/yes}
echo $does_str_contain_william


