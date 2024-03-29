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

// NewPublicIncUserStatItemValueParams creates a new PublicIncUserStatItemValueParams object
// with the default values initialized.
func NewPublicIncUserStatItemValueParams() *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicIncUserStatItemValueParamsWithTimeout creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicIncUserStatItemValueParamsWithTimeout(timeout time.Duration) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewPublicIncUserStatItemValueParamsWithContext creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicIncUserStatItemValueParamsWithContext(ctx context.Context) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		Context: ctx,
	}
}

// NewPublicIncUserStatItemValueParamsWithHTTPClient creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicIncUserStatItemValueParamsWithHTTPClient(client *http.Client) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*PublicIncUserStatItemValueParams contains all the parameters to send to the API endpoint
for the public inc user stat item value operation typically these are written to a http.Request
*/
type PublicIncUserStatItemValueParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithTimeout(timeout time.Duration) *PublicIncUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithContext(ctx context.Context) *PublicIncUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithHTTPClient(client *http.Client) *PublicIncUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicIncUserStatItemValueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithBody(body *socialclientmodels.StatItemInc) *PublicIncUserStatItemValueParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetBody(body *socialclientmodels.StatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithNamespace(namespace string) *PublicIncUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithStatCode(statCode string) *PublicIncUserStatItemValueParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithUserID(userID string) *PublicIncUserStatItemValueParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicIncUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
