// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewBulkUpdateRegionDataParams creates a new BulkUpdateRegionDataParams object
// with the default values initialized.
func NewBulkUpdateRegionDataParams() *BulkUpdateRegionDataParams {
	var ()
	return &BulkUpdateRegionDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkUpdateRegionDataParamsWithTimeout creates a new BulkUpdateRegionDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkUpdateRegionDataParamsWithTimeout(timeout time.Duration) *BulkUpdateRegionDataParams {
	var ()
	return &BulkUpdateRegionDataParams{

		timeout: timeout,
	}
}

// NewBulkUpdateRegionDataParamsWithContext creates a new BulkUpdateRegionDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkUpdateRegionDataParamsWithContext(ctx context.Context) *BulkUpdateRegionDataParams {
	var ()
	return &BulkUpdateRegionDataParams{

		Context: ctx,
	}
}

// NewBulkUpdateRegionDataParamsWithHTTPClient creates a new BulkUpdateRegionDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkUpdateRegionDataParamsWithHTTPClient(client *http.Client) *BulkUpdateRegionDataParams {
	var ()
	return &BulkUpdateRegionDataParams{
		HTTPClient: client,
	}
}

/*BulkUpdateRegionDataParams contains all the parameters to send to the API endpoint
for the bulk update region data operation typically these are written to a http.Request
*/
type BulkUpdateRegionDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.BulkRegionDataChangeRequest
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithTimeout(timeout time.Duration) *BulkUpdateRegionDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithContext(ctx context.Context) *BulkUpdateRegionDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithHTTPClient(client *http.Client) *BulkUpdateRegionDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkUpdateRegionDataParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithBody(body *platformclientmodels.BulkRegionDataChangeRequest) *BulkUpdateRegionDataParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetBody(body *platformclientmodels.BulkRegionDataChangeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithNamespace(namespace string) *BulkUpdateRegionDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the bulk update region data params
func (o *BulkUpdateRegionDataParams) WithStoreID(storeID string) *BulkUpdateRegionDataParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the bulk update region data params
func (o *BulkUpdateRegionDataParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *BulkUpdateRegionDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
			return err
		}
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
