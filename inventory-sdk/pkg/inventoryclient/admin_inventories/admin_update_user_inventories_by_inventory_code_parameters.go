// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

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

// NewAdminUpdateUserInventoriesByInventoryCodeParams creates a new AdminUpdateUserInventoriesByInventoryCodeParams object
// with the default values initialized.
func NewAdminUpdateUserInventoriesByInventoryCodeParams() *AdminUpdateUserInventoriesByInventoryCodeParams {
	var ()
	return &AdminUpdateUserInventoriesByInventoryCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserInventoriesByInventoryCodeParamsWithTimeout creates a new AdminUpdateUserInventoriesByInventoryCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserInventoriesByInventoryCodeParamsWithTimeout(timeout time.Duration) *AdminUpdateUserInventoriesByInventoryCodeParams {
	var ()
	return &AdminUpdateUserInventoriesByInventoryCodeParams{

		timeout: timeout,
	}
}

// NewAdminUpdateUserInventoriesByInventoryCodeParamsWithContext creates a new AdminUpdateUserInventoriesByInventoryCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserInventoriesByInventoryCodeParamsWithContext(ctx context.Context) *AdminUpdateUserInventoriesByInventoryCodeParams {
	var ()
	return &AdminUpdateUserInventoriesByInventoryCodeParams{

		Context: ctx,
	}
}

// NewAdminUpdateUserInventoriesByInventoryCodeParamsWithHTTPClient creates a new AdminUpdateUserInventoriesByInventoryCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserInventoriesByInventoryCodeParamsWithHTTPClient(client *http.Client) *AdminUpdateUserInventoriesByInventoryCodeParams {
	var ()
	return &AdminUpdateUserInventoriesByInventoryCodeParams{
		HTTPClient: client,
	}
}

/*AdminUpdateUserInventoriesByInventoryCodeParams contains all the parameters to send to the API endpoint
for the admin update user inventories by inventory code operation typically these are written to a http.Request
*/
type AdminUpdateUserInventoriesByInventoryCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsUpdateInventoryReq
	/*InventoryConfigurationCode
	  InventoryConfigurationCode

	*/
	InventoryConfigurationCode string
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithTimeout(timeout time.Duration) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithContext(ctx context.Context) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithHTTPClient(client *http.Client) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithBody(body *inventoryclientmodels.ApimodelsUpdateInventoryReq) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetBody(body *inventoryclientmodels.ApimodelsUpdateInventoryReq) {
	o.Body = body
}

// WithInventoryConfigurationCode adds the inventoryConfigurationCode to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithInventoryConfigurationCode(inventoryConfigurationCode string) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetInventoryConfigurationCode(inventoryConfigurationCode)
	return o
}

// SetInventoryConfigurationCode adds the inventoryConfigurationCode to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetInventoryConfigurationCode(inventoryConfigurationCode string) {
	o.InventoryConfigurationCode = inventoryConfigurationCode
}

// WithNamespace adds the namespace to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithNamespace(namespace string) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WithUserID(userID string) *AdminUpdateUserInventoriesByInventoryCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user inventories by inventory code params
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserInventoriesByInventoryCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inventoryConfigurationCode
	if err := r.SetPathParam("inventoryConfigurationCode", o.InventoryConfigurationCode); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
