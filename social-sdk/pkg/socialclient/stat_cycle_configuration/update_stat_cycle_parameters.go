// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewUpdateStatCycleParams creates a new UpdateStatCycleParams object
// with the default values initialized.
func NewUpdateStatCycleParams() *UpdateStatCycleParams {
	var ()
	return &UpdateStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateStatCycleParamsWithTimeout creates a new UpdateStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateStatCycleParamsWithTimeout(timeout time.Duration) *UpdateStatCycleParams {
	var ()
	return &UpdateStatCycleParams{

		timeout: timeout,
	}
}

// NewUpdateStatCycleParamsWithContext creates a new UpdateStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateStatCycleParamsWithContext(ctx context.Context) *UpdateStatCycleParams {
	var ()
	return &UpdateStatCycleParams{

		Context: ctx,
	}
}

// NewUpdateStatCycleParamsWithHTTPClient creates a new UpdateStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateStatCycleParamsWithHTTPClient(client *http.Client) *UpdateStatCycleParams {
	var ()
	return &UpdateStatCycleParams{
		HTTPClient: client,
	}
}

/*UpdateStatCycleParams contains all the parameters to send to the API endpoint
for the update stat cycle operation typically these are written to a http.Request
*/
type UpdateStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatCycleUpdate
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update stat cycle params
func (o *UpdateStatCycleParams) WithTimeout(timeout time.Duration) *UpdateStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update stat cycle params
func (o *UpdateStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update stat cycle params
func (o *UpdateStatCycleParams) WithContext(ctx context.Context) *UpdateStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update stat cycle params
func (o *UpdateStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update stat cycle params
func (o *UpdateStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update stat cycle params
func (o *UpdateStatCycleParams) WithHTTPClient(client *http.Client) *UpdateStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update stat cycle params
func (o *UpdateStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update stat cycle params
func (o *UpdateStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update stat cycle params
func (o *UpdateStatCycleParams) WithBody(body *socialclientmodels.StatCycleUpdate) *UpdateStatCycleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update stat cycle params
func (o *UpdateStatCycleParams) SetBody(body *socialclientmodels.StatCycleUpdate) {
	o.Body = body
}

// WithCycleID adds the cycleID to the update stat cycle params
func (o *UpdateStatCycleParams) WithCycleID(cycleID string) *UpdateStatCycleParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the update stat cycle params
func (o *UpdateStatCycleParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the update stat cycle params
func (o *UpdateStatCycleParams) WithNamespace(namespace string) *UpdateStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update stat cycle params
func (o *UpdateStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
