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

// NewPublicBulkUpdateMyItemsParams creates a new PublicBulkUpdateMyItemsParams object
// with the default values initialized.
func NewPublicBulkUpdateMyItemsParams() *PublicBulkUpdateMyItemsParams {
	var ()
	return &PublicBulkUpdateMyItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBulkUpdateMyItemsParamsWithTimeout creates a new PublicBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBulkUpdateMyItemsParamsWithTimeout(timeout time.Duration) *PublicBulkUpdateMyItemsParams {
	var ()
	return &PublicBulkUpdateMyItemsParams{

		timeout: timeout,
	}
}

// NewPublicBulkUpdateMyItemsParamsWithContext creates a new PublicBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBulkUpdateMyItemsParamsWithContext(ctx context.Context) *PublicBulkUpdateMyItemsParams {
	var ()
	return &PublicBulkUpdateMyItemsParams{

		Context: ctx,
	}
}

// NewPublicBulkUpdateMyItemsParamsWithHTTPClient creates a new PublicBulkUpdateMyItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBulkUpdateMyItemsParamsWithHTTPClient(client *http.Client) *PublicBulkUpdateMyItemsParams {
	var ()
	return &PublicBulkUpdateMyItemsParams{
		HTTPClient: client,
	}
}

/*PublicBulkUpdateMyItemsParams contains all the parameters to send to the API endpoint
for the public bulk update my items operation typically these are written to a http.Request
*/
type PublicBulkUpdateMyItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*inventoryclientmodels.ApimodelsUpdateItemReq
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

// WithTimeout adds the timeout to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithTimeout(timeout time.Duration) *PublicBulkUpdateMyItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithContext(ctx context.Context) *PublicBulkUpdateMyItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithHTTPClient(client *http.Client) *PublicBulkUpdateMyItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicBulkUpdateMyItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithBody(body []*inventoryclientmodels.ApimodelsUpdateItemReq) *PublicBulkUpdateMyItemsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetBody(body []*inventoryclientmodels.ApimodelsUpdateItemReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithInventoryID(inventoryID string) *PublicBulkUpdateMyItemsParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) WithNamespace(namespace string) *PublicBulkUpdateMyItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public bulk update my items params
func (o *PublicBulkUpdateMyItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBulkUpdateMyItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
