document.addEventListener('DOMContentLoaded', () => {
    const allNews = document.querySelectorAll('.News');  
    const loadMoreButton = document.querySelector('.all');  
    let currentIndex = 6;


    allNews.forEach((news, index) => {
        if (index >= currentIndex) {
            news.style.display = 'none';  
        }
    });

    
    if (allNews.length <= 6) {
        currentIndex = allNews.length;  
        if (loadMoreButton) {
            loadMoreButton.style.display = 'none'; 
        }
    }

    if (loadMoreButton) {
        loadMoreButton.addEventListener('click', () => {
            const nextIndex = currentIndex + 3;  

            
            allNews.forEach((news, index) => {
                if (index >= currentIndex && index < nextIndex) {
                    news.style.display = 'block'; 
                }
            });

            currentIndex = nextIndex;  

           
            if (currentIndex >= allNews.length) {
                loadMoreButton.style.display = 'none';  
            }
        });
    }
});

document.addEventListener('DOMContentLoaded', () => {
    

    
    document.getElementById("sort-date-asc")?.addEventListener("click", () => sortData('date', 'asc'));
    document.getElementById("sort-date-desc")?.addEventListener("click", () => sortData('date', 'desc'));
    document.getElementById("sort-title-asc")?.addEventListener("click", () => sortData('title', 'asc'));
    document.getElementById("sort-title-desc")?.addEventListener("click", () => sortData('title', 'desc'));

    
    var modal = document.getElementById("sortModal");
    var btn = document.getElementById("sortButton");
    var span = document.getElementsByClassName("close")[0];

    if (btn && modal && span) {
        
        btn.onclick = function() {
            modal.style.display = "block";
        }

        
        span.onclick = function() {
            modal.style.display = "none";
        }

        
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    }
});

document.querySelectorAll('a.sort-link').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault();
        const url = this.href;

        fetch(url)
            .then(response => response.text())
            .then(html => {
                
                document.querySelector('.container1').innerHTML = new DOMParser()
                    .parseFromString(html, 'text/html')
                    .querySelector('.container1').innerHTML;
            });
    });
});