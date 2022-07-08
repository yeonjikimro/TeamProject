document.addEventListener("DOMContentLoaded", () => {
    const btn_update = document.querySelector("label.comple-option");


    btn_update.addEventListener("click", (e)=> {
        const target = e.target;
        const tr = target.closest("div.ing-list");
        const seq = tr.dataset.seq;

        document.location.href = `${rootPath}/user/${seq}/update_situ`;
    });
});