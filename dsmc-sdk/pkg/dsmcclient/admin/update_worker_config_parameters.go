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

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewUpdateWorkerConfigParams creates a new UpdateWorkerConfigParams object
// with the default values initialized.
func NewUpdateWorkerConfigParams() *UpdateWorkerConfigParams {
	var ()
	return &UpdateWorkerConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateWorkerConfigParamsWithTimeout creates a new UpdateWorkerConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateWorkerConfigParamsWithTimeout(timeout time.Duration) *UpdateWorkerConfigParams {
	var ()
	return &UpdateWorkerConfigParams{

		timeout: timeout,
	}
}

// NewUpdateWorkerConfigParamsWithContext creates a new UpdateWorkerConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateWorkerConfigParamsWithContext(ctx context.Context) *UpdateWorkerConfigParams {
	var ()
	return &UpdateWorkerConfigParams{

		Context: ctx,
	}
}

// NewUpdateWorkerConfigParamsWithHTTPClient creates a new UpdateWorkerConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateWorkerConfigParamsWithHTTPClient(client *http.Client) *UpdateWorkerConfigParams {
	var ()
	return &UpdateWorkerConfigParams{
		HTTPClient: client,
	}
}

/*UpdateWorkerConfigParams contains all the parameters to send to the API endpoint
for the update worker config operation typically these are written to a http.Request
*/
type UpdateWorkerConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsWorkerConfigRequest
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

// WithTimeout adds the timeout to the update worker config params
func (o *UpdateWorkerConfigParams) WithTimeout(timeout time.Duration) *UpdateWorkerConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update worker config params
func (o *UpdateWorkerConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update worker config params
func (o *UpdateWorkerConfigParams) WithContext(ctx context.Context) *UpdateWorkerConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update worker config params
func (o *UpdateWorkerConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update worker config params
func (o *UpdateWorkerConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update worker config params
func (o *UpdateWorkerConfigParams) WithHTTPClient(client *http.Client) *UpdateWorkerConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update worker config params
func (o *UpdateWorkerConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update worker config params
func (o *UpdateWorkerConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateWorkerConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update worker config params
func (o *UpdateWorkerConfigParams) WithBody(body *dsmcclientmodels.ModelsWorkerConfigRequest) *UpdateWorkerConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update worker config params
func (o *UpdateWorkerConfigParams) SetBody(body *dsmcclientmodels.ModelsWorkerConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update worker config params
func (o *UpdateWorkerConfigParams) WithNamespace(namespace string) *UpdateWorkerConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update worker config params
func (o *UpdateWorkerConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateWorkerConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
