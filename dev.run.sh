FLAG=$1

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color (색상 초기화)

if [ -z "${FLAG}" ]; then
  echo -e "${GREEN}[LOG]${NC} Executing main application"  
  cargo run
fi 

case "${FLAG}" in
  --test)
  echo -e "${BLUE}[LOG]${NC} Running rust test suites"  
  cargo test
  ;;

  *)
  echo -e "${RED}[LOG]${NC} invalid flags"  
  exit 1
  ;;
esac