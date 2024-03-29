// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// NewUpdateStatParams creates a new UpdateStatParams object
// with the default values initialized.
func NewUpdateStatParams() *UpdateStatParams {
	var ()
	return &UpdateStatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateStatParamsWithTimeout creates a new UpdateStatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateStatParamsWithTimeout(timeout time.Duration) *UpdateStatParams {
	var ()
	return &UpdateStatParams{

		timeout: timeout,
	}
}

// NewUpdateStatParamsWithContext creates a new UpdateStatParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateStatParamsWithContext(ctx context.Context) *UpdateStatParams {
	var ()
	return &UpdateStatParams{

		Context: ctx,
	}
}

// NewUpdateStatParamsWithHTTPClient creates a new UpdateStatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateStatParamsWithHTTPClient(client *http.Client) *UpdateStatParams {
	var ()
	return &UpdateStatParams{
		HTTPClient: client,
	}
}

/*UpdateStatParams contains all the parameters to send to the API endpoint
for the update stat operation typically these are written to a http.Request
*/
type UpdateStatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatUpdate
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update stat params
func (o *UpdateStatParams) WithTimeout(timeout time.Duration) *UpdateStatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update stat params
func (o *UpdateStatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update stat params
func (o *UpdateStatParams) WithContext(ctx context.Context) *UpdateStatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update stat params
func (o *UpdateStatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update stat params
func (o *UpdateStatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update stat params
func (o *UpdateStatParams) WithHTTPClient(client *http.Client) *UpdateStatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update stat params
func (o *UpdateStatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update stat params
func (o *UpdateStatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateStatParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update stat params
func (o *UpdateStatParams) WithBody(body *socialclientmodels.StatUpdate) *UpdateStatParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update stat params
func (o *UpdateStatParams) SetBody(body *socialclientmodels.StatUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update stat params
func (o *UpdateStatParams) WithNamespace(namespace string) *UpdateStatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update stat params
func (o *UpdateStatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the update stat params
func (o *UpdateStatParams) WithStatCode(statCode string) *UpdateStatParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the update stat params
func (o *UpdateStatParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateStatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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
