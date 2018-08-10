#!/bin/bash
CLASSH="\n
#ifndef ${1}_H__\n
#define ${1}_H__\n
\n
#include <fun4all/SubsysReco.h>\n
\n
class PHCompositeNode;\n
\n
class ${1}: public SubsysReco\n
{\n
  \n
  public:\n 
  ${1}();\n 
  int Init(PHCompositeNode*);\n 
  int process_event(PHCompositeNode*);\n
  int End(PHCompositeNode*);\n
  \n 
  private:\n  
  inline float deltaR( float eta1, float eta2, float phi1, float phi2 ) {\n  
    float deta = eta1 - eta2;\n
    float dphi = phi1 - phi2;\n
    if ( dphi > 3.14159 ) dphi -= 2 * 3.14159;\n
      if ( dphi < -3.14159 ) dphi += 2 * 3.14159;\n
    return sqrt( pow( deta, 2 ) + pow( dphi, 2 ) );\n
  }\n
  \n
};\n
#endif // __${1}_H__\n"
CLASSCC="\n
#include "CalorimeterProjector.h"\n
\n
#include <phool/getClass.h>\n
#include <fun4all/Fun4AllServer.h>\n

#include <phool/PHCompositeNode.h>\n

CalorimeterProjector::CalorimeterProjector() : SubsysReco("SinglePhoton")\n
{\n
\n
}\n
\n
int CalorimeterProjector::Init(PHCompositeNode *topNode)\n
{\n
  \n
  return 0;\n
}\n
\n
int CalorimeterProjector::process_event(PHCompositeNode *topNode)\n
{\n
\n
  return 0;\n
}\n
\n
int CalorimeterProjector::End(PHCompositeNode *topNode)\n
{\n
  return 0;\n
}\n"

echo -e $CLASSH>>${1}.h
echo -e $CLASSCC>>${1}.cc
