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

// NewAdminBulkUpdateMyItemsParams creates a new AdminBulkUpdateMyItemsParams object
// with the default values initialized.
func NewAdminBulkUpdateMyItemsParams() *AdminBulkUpdateMyItemsParams {
	var ()
	return &AdminBulkUpdateMyItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkUpdateMyItemsParamsWithTimeout creates a new AdminBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkUpdateMyItemsParamsWithTimeout(timeout time.Duration) *AdminBulkUpdateMyItemsParams {
	var ()
	return &AdminBulkUpdateMyItemsParams{

		timeout: timeout,
	}
}

// NewAdminBulkUpdateMyItemsParamsWithContext creates a new AdminBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkUpdateMyItemsParamsWithContext(ctx context.Context) *AdminBulkUpdateMyItemsParams {
	var ()
	return &AdminBulkUpdateMyItemsParams{

		Context: ctx,
	}
}

// NewAdminBulkUpdateMyItemsParamsWithHTTPClient creates a new AdminBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkUpdateMyItemsParamsWithHTTPClient(client *http.Client) *AdminBulkUpdateMyItemsParams {
	var ()
	return &AdminBulkUpdateMyItemsParams{
		HTTPClient: client,
	}
}

/*AdminBulkUpdateMyItemsParams contains all the parameters to send to the API endpoint
for the admin bulk update my items operation typically these are written to a http.Request
*/
type AdminBulkUpdateMyItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*inventoryclientmodels.ApimodelsAdminUpdateItemReq
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithTimeout(timeout time.Duration) *AdminBulkUpdateMyItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithContext(ctx context.Context) *AdminBulkUpdateMyItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithHTTPClient(client *http.Client) *AdminBulkUpdateMyItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBulkUpdateMyItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithBody(body []*inventoryclientmodels.ApimodelsAdminUpdateItemReq) *AdminBulkUpdateMyItemsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetBody(body []*inventoryclientmodels.ApimodelsAdminUpdateItemReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithInventoryID(inventoryID string) *AdminBulkUpdateMyItemsParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithNamespace(namespace string) *AdminBulkUpdateMyItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) WithUserID(userID string) *AdminBulkUpdateMyItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin bulk update my items params
func (o *AdminBulkUpdateMyItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkUpdateMyItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
