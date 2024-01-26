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

// NewPublicConsumeMyItemParams creates a new PublicConsumeMyItemParams object
// with the default values initialized.
func NewPublicConsumeMyItemParams() *PublicConsumeMyItemParams {
	var ()
	return &PublicConsumeMyItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicConsumeMyItemParamsWithTimeout creates a new PublicConsumeMyItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicConsumeMyItemParamsWithTimeout(timeout time.Duration) *PublicConsumeMyItemParams {
	var ()
	return &PublicConsumeMyItemParams{

		timeout: timeout,
	}
}

// NewPublicConsumeMyItemParamsWithContext creates a new PublicConsumeMyItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicConsumeMyItemParamsWithContext(ctx context.Context) *PublicConsumeMyItemParams {
	var ()
	return &PublicConsumeMyItemParams{

		Context: ctx,
	}
}

// NewPublicConsumeMyItemParamsWithHTTPClient creates a new PublicConsumeMyItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicConsumeMyItemParamsWithHTTPClient(client *http.Client) *PublicConsumeMyItemParams {
	var ()
	return &PublicConsumeMyItemParams{
		HTTPClient: client,
	}
}

/*PublicConsumeMyItemParams contains all the parameters to send to the API endpoint
for the public consume my item operation typically these are written to a http.Request
*/
type PublicConsumeMyItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsConsumeItemReq
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

// WithTimeout adds the timeout to the public consume my item params
func (o *PublicConsumeMyItemParams) WithTimeout(timeout time.Duration) *PublicConsumeMyItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public consume my item params
func (o *PublicConsumeMyItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public consume my item params
func (o *PublicConsumeMyItemParams) WithContext(ctx context.Context) *PublicConsumeMyItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public consume my item params
func (o *PublicConsumeMyItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public consume my item params
func (o *PublicConsumeMyItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public consume my item params
func (o *PublicConsumeMyItemParams) WithHTTPClient(client *http.Client) *PublicConsumeMyItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public consume my item params
func (o *PublicConsumeMyItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public consume my item params
func (o *PublicConsumeMyItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicConsumeMyItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public consume my item params
func (o *PublicConsumeMyItemParams) WithBody(body *inventoryclientmodels.ApimodelsConsumeItemReq) *PublicConsumeMyItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public consume my item params
func (o *PublicConsumeMyItemParams) SetBody(body *inventoryclientmodels.ApimodelsConsumeItemReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the public consume my item params
func (o *PublicConsumeMyItemParams) WithInventoryID(inventoryID string) *PublicConsumeMyItemParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the public consume my item params
func (o *PublicConsumeMyItemParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the public consume my item params
func (o *PublicConsumeMyItemParams) WithNamespace(namespace string) *PublicConsumeMyItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public consume my item params
func (o *PublicConsumeMyItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicConsumeMyItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
