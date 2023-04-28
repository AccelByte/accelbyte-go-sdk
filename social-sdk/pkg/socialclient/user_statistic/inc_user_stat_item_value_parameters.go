// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewIncUserStatItemValueParams creates a new IncUserStatItemValueParams object
// with the default values initialized.
func NewIncUserStatItemValueParams() *IncUserStatItemValueParams {
	var ()
	return &IncUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewIncUserStatItemValueParamsWithTimeout creates a new IncUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewIncUserStatItemValueParamsWithTimeout(timeout time.Duration) *IncUserStatItemValueParams {
	var ()
	return &IncUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewIncUserStatItemValueParamsWithContext creates a new IncUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewIncUserStatItemValueParamsWithContext(ctx context.Context) *IncUserStatItemValueParams {
	var ()
	return &IncUserStatItemValueParams{

		Context: ctx,
	}
}

// NewIncUserStatItemValueParamsWithHTTPClient creates a new IncUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewIncUserStatItemValueParamsWithHTTPClient(client *http.Client) *IncUserStatItemValueParams {
	var ()
	return &IncUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*IncUserStatItemValueParams contains all the parameters to send to the API endpoint
for the inc user stat item value operation typically these are written to a http.Request
*/
type IncUserStatItemValueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatItemInc
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithTimeout(timeout time.Duration) *IncUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithContext(ctx context.Context) *IncUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithHTTPClient(client *http.Client) *IncUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithBody(body *socialclientmodels.StatItemInc) *IncUserStatItemValueParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetBody(body *socialclientmodels.StatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithNamespace(namespace string) *IncUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithStatCode(statCode string) *IncUserStatItemValueParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the inc user stat item value params
func (o *IncUserStatItemValueParams) WithUserID(userID string) *IncUserStatItemValueParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the inc user stat item value params
func (o *IncUserStatItemValueParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *IncUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
