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

// NewPublicIncUserStatItemParams creates a new PublicIncUserStatItemParams object
// with the default values initialized.
func NewPublicIncUserStatItemParams() *PublicIncUserStatItemParams {
	var ()
	return &PublicIncUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicIncUserStatItemParamsWithTimeout creates a new PublicIncUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicIncUserStatItemParamsWithTimeout(timeout time.Duration) *PublicIncUserStatItemParams {
	var ()
	return &PublicIncUserStatItemParams{

		timeout: timeout,
	}
}

// NewPublicIncUserStatItemParamsWithContext creates a new PublicIncUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicIncUserStatItemParamsWithContext(ctx context.Context) *PublicIncUserStatItemParams {
	var ()
	return &PublicIncUserStatItemParams{

		Context: ctx,
	}
}

// NewPublicIncUserStatItemParamsWithHTTPClient creates a new PublicIncUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicIncUserStatItemParamsWithHTTPClient(client *http.Client) *PublicIncUserStatItemParams {
	var ()
	return &PublicIncUserStatItemParams{
		HTTPClient: client,
	}
}

/*PublicIncUserStatItemParams contains all the parameters to send to the API endpoint
for the public inc user stat item operation typically these are written to a http.Request
*/
type PublicIncUserStatItemParams struct {

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

// WithTimeout adds the timeout to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithTimeout(timeout time.Duration) *PublicIncUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithContext(ctx context.Context) *PublicIncUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithHTTPClient(client *http.Client) *PublicIncUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicIncUserStatItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithBody(body *socialclientmodels.StatItemInc) *PublicIncUserStatItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetBody(body *socialclientmodels.StatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithNamespace(namespace string) *PublicIncUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithStatCode(statCode string) *PublicIncUserStatItemParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the public inc user stat item params
func (o *PublicIncUserStatItemParams) WithUserID(userID string) *PublicIncUserStatItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public inc user stat item params
func (o *PublicIncUserStatItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicIncUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
