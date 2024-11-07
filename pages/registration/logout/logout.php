<link rel="stylesheet" href="./logout.css">

<!-- Modal de confirmação (escondido inicialmente) -->
<div class="modal-page">
    <div id="logoutModal" class="modal">
        <div class="modal-content">
            <div class="modal-text">
                <div class="close-button"><span>&times;</span></div>
                <h2>Sair</h2>
                <p>Tem certeza de que deseja sair?</p>
            </div>
            <div class="modal-actions">
                <button id="cancelLogout" class="btn-cancel">Cancelar</button>
                <button id="confirmLogout" class="btn-confirm">Sair</button>
            </div>
        </div>
    </div>
</div>

<script src="../../../js/jquery.js"></script>

<script src="./logout.js"></script>