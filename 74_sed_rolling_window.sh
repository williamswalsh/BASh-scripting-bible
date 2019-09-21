#!/bin/bash

sed '{
  :Start
  $q ; N ; 11,$D
  b Start
}' data23
