function Footer() {
const year = useMemo(() =>{
const now = new Date();
return now.getFullYear();
}, []);