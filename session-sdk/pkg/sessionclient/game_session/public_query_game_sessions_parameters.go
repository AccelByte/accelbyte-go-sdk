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

// NewPublicQueryGameSessionsParams creates a new PublicQueryGameSessionsParams object
// with the default values initialized.
func NewPublicQueryGameSessionsParams() *PublicQueryGameSessionsParams {
	var ()
	return &PublicQueryGameSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryGameSessionsParamsWithTimeout creates a new PublicQueryGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryGameSessionsParamsWithTimeout(timeout time.Duration) *PublicQueryGameSessionsParams {
	var ()
	return &PublicQueryGameSessionsParams{

		timeout: timeout,
	}
}

// NewPublicQueryGameSessionsParamsWithContext creates a new PublicQueryGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryGameSessionsParamsWithContext(ctx context.Context) *PublicQueryGameSessionsParams {
	var ()
	return &PublicQueryGameSessionsParams{

		Context: ctx,
	}
}

// NewPublicQueryGameSessionsParamsWithHTTPClient creates a new PublicQueryGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryGameSessionsParamsWithHTTPClient(client *http.Client) *PublicQueryGameSessionsParams {
	var ()
	return &PublicQueryGameSessionsParams{
		HTTPClient: client,
	}
}

/*PublicQueryGameSessionsParams contains all the parameters to send to the API endpoint
for the public query game sessions operation typically these are written to a http.Request
*/
type PublicQueryGameSessionsParams struct {

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

// WithTimeout adds the timeout to the public query game sessions params
func (o *PublicQueryGameSessionsParams) WithTimeout(timeout time.Duration) *PublicQueryGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query game sessions params
func (o *PublicQueryGameSessionsParams) WithContext(ctx context.Context) *PublicQueryGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query game sessions params
func (o *PublicQueryGameSessionsParams) WithHTTPClient(client *http.Client) *PublicQueryGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public query game sessions params
func (o *PublicQueryGameSessionsParams) WithBody(body map[string]interface{}) *PublicQueryGameSessionsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public query game sessions params
func (o *PublicQueryGameSessionsParams) WithNamespace(namespace string) *PublicQueryGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query game sessions params
func (o *PublicQueryGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
