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

// NewAddBufferParams creates a new AddBufferParams object
// with the default values initialized.
func NewAddBufferParams() *AddBufferParams {
	var ()
	return &AddBufferParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddBufferParamsWithTimeout creates a new AddBufferParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddBufferParamsWithTimeout(timeout time.Duration) *AddBufferParams {
	var ()
	return &AddBufferParams{

		timeout: timeout,
	}
}

// NewAddBufferParamsWithContext creates a new AddBufferParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddBufferParamsWithContext(ctx context.Context) *AddBufferParams {
	var ()
	return &AddBufferParams{

		Context: ctx,
	}
}

// NewAddBufferParamsWithHTTPClient creates a new AddBufferParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddBufferParamsWithHTTPClient(client *http.Client) *AddBufferParams {
	var ()
	return &AddBufferParams{
		HTTPClient: client,
	}
}

/*AddBufferParams contains all the parameters to send to the API endpoint
for the add buffer operation typically these are written to a http.Request
*/
type AddBufferParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsAddBufferRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the add buffer params
func (o *AddBufferParams) WithTimeout(timeout time.Duration) *AddBufferParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add buffer params
func (o *AddBufferParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add buffer params
func (o *AddBufferParams) WithContext(ctx context.Context) *AddBufferParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add buffer params
func (o *AddBufferParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add buffer params
func (o *AddBufferParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add buffer params
func (o *AddBufferParams) WithHTTPClient(client *http.Client) *AddBufferParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add buffer params
func (o *AddBufferParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add buffer params
func (o *AddBufferParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddBufferParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add buffer params
func (o *AddBufferParams) WithBody(body *dsmcclientmodels.ModelsAddBufferRequest) *AddBufferParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add buffer params
func (o *AddBufferParams) SetBody(body *dsmcclientmodels.ModelsAddBufferRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the add buffer params
func (o *AddBufferParams) WithNamespace(namespace string) *AddBufferParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add buffer params
func (o *AddBufferParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AddBufferParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
