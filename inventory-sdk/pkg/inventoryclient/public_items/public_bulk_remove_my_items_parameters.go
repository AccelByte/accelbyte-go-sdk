// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_items

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

// NewPublicBulkRemoveMyItemsParams creates a new PublicBulkRemoveMyItemsParams object
// with the default values initialized.
func NewPublicBulkRemoveMyItemsParams() *PublicBulkRemoveMyItemsParams {
	var ()
	return &PublicBulkRemoveMyItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkRemoveMyItemsParamsWithTimeout creates a new PublicBulkRemoveMyItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkRemoveMyItemsParamsWithTimeout(timeout time.Duration) *PublicBulkRemoveMyItemsParams {
	var ()
	return &PublicBulkRemoveMyItemsParams{

		timeout: timeout,
	}
}

// NewPublicBulkRemoveMyItemsParamsWithContext creates a new PublicBulkRemoveMyItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkRemoveMyItemsParamsWithContext(ctx context.Context) *PublicBulkRemoveMyItemsParams {
	var ()
	return &PublicBulkRemoveMyItemsParams{

		Context: ctx,
	}
}

// NewPublicBulkRemoveMyItemsParamsWithHTTPClient creates a new PublicBulkRemoveMyItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkRemoveMyItemsParamsWithHTTPClient(client *http.Client) *PublicBulkRemoveMyItemsParams {
	var ()
	return &PublicBulkRemoveMyItemsParams{
		HTTPClient: client,
	}
}

/*PublicBulkRemoveMyItemsParams contains all the parameters to send to the API endpoint
for the public bulk remove my items operation typically these are written to a http.Request
*/
type PublicBulkRemoveMyItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*inventoryclientmodels.ApimodelsRemoveInventoryItemReq
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithTimeout(timeout time.Duration) *PublicBulkRemoveMyItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithContext(ctx context.Context) *PublicBulkRemoveMyItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithHTTPClient(client *http.Client) *PublicBulkRemoveMyItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkRemoveMyItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithBody(body []*inventoryclientmodels.ApimodelsRemoveInventoryItemReq) *PublicBulkRemoveMyItemsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetBody(body []*inventoryclientmodels.ApimodelsRemoveInventoryItemReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithInventoryID(inventoryID string) *PublicBulkRemoveMyItemsParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) WithNamespace(namespace string) *PublicBulkRemoveMyItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk remove my items params
func (o *PublicBulkRemoveMyItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkRemoveMyItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
