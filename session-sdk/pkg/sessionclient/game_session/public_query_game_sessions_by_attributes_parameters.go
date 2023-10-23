// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// NewPublicQueryGameSessionsByAttributesParams creates a new PublicQueryGameSessionsByAttributesParams object
// with the default values initialized.
func NewPublicQueryGameSessionsByAttributesParams() *PublicQueryGameSessionsByAttributesParams {
	var ()
	return &PublicQueryGameSessionsByAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryGameSessionsByAttributesParamsWithTimeout creates a new PublicQueryGameSessionsByAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryGameSessionsByAttributesParamsWithTimeout(timeout time.Duration) *PublicQueryGameSessionsByAttributesParams {
	var ()
	return &PublicQueryGameSessionsByAttributesParams{

		timeout: timeout,
	}
}

// NewPublicQueryGameSessionsByAttributesParamsWithContext creates a new PublicQueryGameSessionsByAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryGameSessionsByAttributesParamsWithContext(ctx context.Context) *PublicQueryGameSessionsByAttributesParams {
	var ()
	return &PublicQueryGameSessionsByAttributesParams{

		Context: ctx,
	}
}

// NewPublicQueryGameSessionsByAttributesParamsWithHTTPClient creates a new PublicQueryGameSessionsByAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryGameSessionsByAttributesParamsWithHTTPClient(client *http.Client) *PublicQueryGameSessionsByAttributesParams {
	var ()
	return &PublicQueryGameSessionsByAttributesParams{
		HTTPClient: client,
	}
}

/*PublicQueryGameSessionsByAttributesParams contains all the parameters to send to the API endpoint
for the public query game sessions by attributes operation typically these are written to a http.Request
*/
type PublicQueryGameSessionsByAttributesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) WithTimeout(timeout time.Duration) *PublicQueryGameSessionsByAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) WithContext(ctx context.Context) *PublicQueryGameSessionsByAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) WithHTTPClient(client *http.Client) *PublicQueryGameSessionsByAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) WithBody(body map[string]interface{}) *PublicQueryGameSessionsByAttributesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) WithNamespace(namespace string) *PublicQueryGameSessionsByAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query game sessions by attributes params
func (o *PublicQueryGameSessionsByAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryGameSessionsByAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
