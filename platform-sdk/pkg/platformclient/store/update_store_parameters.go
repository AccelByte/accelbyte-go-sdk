// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewUpdateStoreParams creates a new UpdateStoreParams object
// with the default values initialized.
func NewUpdateStoreParams() *UpdateStoreParams {
	var ()
	return &UpdateStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateStoreParamsWithTimeout creates a new UpdateStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateStoreParamsWithTimeout(timeout time.Duration) *UpdateStoreParams {
	var ()
	return &UpdateStoreParams{

		timeout: timeout,
	}
}

// NewUpdateStoreParamsWithContext creates a new UpdateStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateStoreParamsWithContext(ctx context.Context) *UpdateStoreParams {
	var ()
	return &UpdateStoreParams{

		Context: ctx,
	}
}

// NewUpdateStoreParamsWithHTTPClient creates a new UpdateStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateStoreParamsWithHTTPClient(client *http.Client) *UpdateStoreParams {
	var ()
	return &UpdateStoreParams{
		HTTPClient: client,
	}
}

/*UpdateStoreParams contains all the parameters to send to the API endpoint
for the update store operation typically these are written to a http.Request
*/
type UpdateStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.StoreUpdate
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

// WithTimeout adds the timeout to the update store params
func (o *UpdateStoreParams) WithTimeout(timeout time.Duration) *UpdateStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update store params
func (o *UpdateStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update store params
func (o *UpdateStoreParams) WithContext(ctx context.Context) *UpdateStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update store params
func (o *UpdateStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update store params
func (o *UpdateStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update store params
func (o *UpdateStoreParams) WithHTTPClient(client *http.Client) *UpdateStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update store params
func (o *UpdateStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update store params
func (o *UpdateStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update store params
func (o *UpdateStoreParams) WithBody(body *platformclientmodels.StoreUpdate) *UpdateStoreParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update store params
func (o *UpdateStoreParams) SetBody(body *platformclientmodels.StoreUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update store params
func (o *UpdateStoreParams) WithNamespace(namespace string) *UpdateStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update store params
func (o *UpdateStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the update store params
func (o *UpdateStoreParams) WithStoreID(storeID string) *UpdateStoreParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update store params
func (o *UpdateStoreParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
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
