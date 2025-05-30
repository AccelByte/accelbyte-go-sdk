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

// NewCreateWorkerConfigParams creates a new CreateWorkerConfigParams object
// with the default values initialized.
func NewCreateWorkerConfigParams() *CreateWorkerConfigParams {
	var ()
	return &CreateWorkerConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateWorkerConfigParamsWithTimeout creates a new CreateWorkerConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateWorkerConfigParamsWithTimeout(timeout time.Duration) *CreateWorkerConfigParams {
	var ()
	return &CreateWorkerConfigParams{

		timeout: timeout,
	}
}

// NewCreateWorkerConfigParamsWithContext creates a new CreateWorkerConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateWorkerConfigParamsWithContext(ctx context.Context) *CreateWorkerConfigParams {
	var ()
	return &CreateWorkerConfigParams{

		Context: ctx,
	}
}

// NewCreateWorkerConfigParamsWithHTTPClient creates a new CreateWorkerConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateWorkerConfigParamsWithHTTPClient(client *http.Client) *CreateWorkerConfigParams {
	var ()
	return &CreateWorkerConfigParams{
		HTTPClient: client,
	}
}

/*CreateWorkerConfigParams contains all the parameters to send to the API endpoint
for the create worker config operation typically these are written to a http.Request
*/
type CreateWorkerConfigParams struct {

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

// WithTimeout adds the timeout to the create worker config params
func (o *CreateWorkerConfigParams) WithTimeout(timeout time.Duration) *CreateWorkerConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create worker config params
func (o *CreateWorkerConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create worker config params
func (o *CreateWorkerConfigParams) WithContext(ctx context.Context) *CreateWorkerConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create worker config params
func (o *CreateWorkerConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create worker config params
func (o *CreateWorkerConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create worker config params
func (o *CreateWorkerConfigParams) WithHTTPClient(client *http.Client) *CreateWorkerConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create worker config params
func (o *CreateWorkerConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create worker config params
func (o *CreateWorkerConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateWorkerConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create worker config params
func (o *CreateWorkerConfigParams) WithBody(body *dsmcclientmodels.ModelsWorkerConfigRequest) *CreateWorkerConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create worker config params
func (o *CreateWorkerConfigParams) SetBody(body *dsmcclientmodels.ModelsWorkerConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create worker config params
func (o *CreateWorkerConfigParams) WithNamespace(namespace string) *CreateWorkerConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create worker config params
func (o *CreateWorkerConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateWorkerConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
