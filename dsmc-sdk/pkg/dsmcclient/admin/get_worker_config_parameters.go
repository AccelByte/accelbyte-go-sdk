// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetWorkerConfigParams creates a new GetWorkerConfigParams object
// with the default values initialized.
func NewGetWorkerConfigParams() *GetWorkerConfigParams {
	var ()
	return &GetWorkerConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetWorkerConfigParamsWithTimeout creates a new GetWorkerConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetWorkerConfigParamsWithTimeout(timeout time.Duration) *GetWorkerConfigParams {
	var ()
	return &GetWorkerConfigParams{

		timeout: timeout,
	}
}

// NewGetWorkerConfigParamsWithContext creates a new GetWorkerConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetWorkerConfigParamsWithContext(ctx context.Context) *GetWorkerConfigParams {
	var ()
	return &GetWorkerConfigParams{

		Context: ctx,
	}
}

// NewGetWorkerConfigParamsWithHTTPClient creates a new GetWorkerConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetWorkerConfigParamsWithHTTPClient(client *http.Client) *GetWorkerConfigParams {
	var ()
	return &GetWorkerConfigParams{
		HTTPClient: client,
	}
}

/*GetWorkerConfigParams contains all the parameters to send to the API endpoint
for the get worker config operation typically these are written to a http.Request
*/
type GetWorkerConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  the namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get worker config params
func (o *GetWorkerConfigParams) WithTimeout(timeout time.Duration) *GetWorkerConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get worker config params
func (o *GetWorkerConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get worker config params
func (o *GetWorkerConfigParams) WithContext(ctx context.Context) *GetWorkerConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get worker config params
func (o *GetWorkerConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get worker config params
func (o *GetWorkerConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get worker config params
func (o *GetWorkerConfigParams) WithHTTPClient(client *http.Client) *GetWorkerConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get worker config params
func (o *GetWorkerConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get worker config params
func (o *GetWorkerConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetWorkerConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get worker config params
func (o *GetWorkerConfigParams) WithNamespace(namespace string) *GetWorkerConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get worker config params
func (o *GetWorkerConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetWorkerConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
