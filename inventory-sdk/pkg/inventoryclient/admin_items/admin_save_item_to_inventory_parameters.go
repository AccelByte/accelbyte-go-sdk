// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_items

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminSaveItemToInventoryParams creates a new AdminSaveItemToInventoryParams object
// with the default values initialized.
func NewAdminSaveItemToInventoryParams() *AdminSaveItemToInventoryParams {
	var ()
	return &AdminSaveItemToInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSaveItemToInventoryParamsWithTimeout creates a new AdminSaveItemToInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSaveItemToInventoryParamsWithTimeout(timeout time.Duration) *AdminSaveItemToInventoryParams {
	var ()
	return &AdminSaveItemToInventoryParams{

		timeout: timeout,
	}
}

// NewAdminSaveItemToInventoryParamsWithContext creates a new AdminSaveItemToInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSaveItemToInventoryParamsWithContext(ctx context.Context) *AdminSaveItemToInventoryParams {
	var ()
	return &AdminSaveItemToInventoryParams{

		Context: ctx,
	}
}

// NewAdminSaveItemToInventoryParamsWithHTTPClient creates a new AdminSaveItemToInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSaveItemToInventoryParamsWithHTTPClient(client *http.Client) *AdminSaveItemToInventoryParams {
	var ()
	return &AdminSaveItemToInventoryParams{
		HTTPClient: client,
	}
}

/*AdminSaveItemToInventoryParams contains all the parameters to send to the API endpoint
for the admin save item to inventory operation typically these are written to a http.Request
*/
type AdminSaveItemToInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsSaveItemToInventoryReq
	/*InventoryID
	  inventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  UserID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithTimeout(timeout time.Duration) *AdminSaveItemToInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithContext(ctx context.Context) *AdminSaveItemToInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithHTTPClient(client *http.Client) *AdminSaveItemToInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithBody(body *inventoryclientmodels.ApimodelsSaveItemToInventoryReq) *AdminSaveItemToInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetBody(body *inventoryclientmodels.ApimodelsSaveItemToInventoryReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithInventoryID(inventoryID string) *AdminSaveItemToInventoryParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithNamespace(namespace string) *AdminSaveItemToInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) WithUserID(userID string) *AdminSaveItemToInventoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin save item to inventory params
func (o *AdminSaveItemToInventoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSaveItemToInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
