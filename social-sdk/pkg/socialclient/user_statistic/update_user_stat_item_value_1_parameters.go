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

// NewUpdateUserStatItemValue1Params creates a new UpdateUserStatItemValue1Params object
// with the default values initialized.
func NewUpdateUserStatItemValue1Params() *UpdateUserStatItemValue1Params {
	var ()
	return &UpdateUserStatItemValue1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserStatItemValue1ParamsWithTimeout creates a new UpdateUserStatItemValue1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserStatItemValue1ParamsWithTimeout(timeout time.Duration) *UpdateUserStatItemValue1Params {
	var ()
	return &UpdateUserStatItemValue1Params{

		timeout: timeout,
	}
}

// NewUpdateUserStatItemValue1ParamsWithContext creates a new UpdateUserStatItemValue1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserStatItemValue1ParamsWithContext(ctx context.Context) *UpdateUserStatItemValue1Params {
	var ()
	return &UpdateUserStatItemValue1Params{

		Context: ctx,
	}
}

// NewUpdateUserStatItemValue1ParamsWithHTTPClient creates a new UpdateUserStatItemValue1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserStatItemValue1ParamsWithHTTPClient(client *http.Client) *UpdateUserStatItemValue1Params {
	var ()
	return &UpdateUserStatItemValue1Params{
		HTTPClient: client,
	}
}

/*UpdateUserStatItemValue1Params contains all the parameters to send to the API endpoint
for the update user stat item value 1 operation typically these are written to a http.Request
*/
type UpdateUserStatItemValue1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatItemUpdate
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
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithTimeout(timeout time.Duration) *UpdateUserStatItemValue1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithContext(ctx context.Context) *UpdateUserStatItemValue1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithHTTPClient(client *http.Client) *UpdateUserStatItemValue1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithBody(body *socialclientmodels.StatItemUpdate) *UpdateUserStatItemValue1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetBody(body *socialclientmodels.StatItemUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithNamespace(namespace string) *UpdateUserStatItemValue1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithStatCode(statCode string) *UpdateUserStatItemValue1Params {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithUserID(userID string) *UpdateUserStatItemValue1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) WithAdditionalKey(additionalKey *string) *UpdateUserStatItemValue1Params {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the update user stat item value 1 params
func (o *UpdateUserStatItemValue1Params) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserStatItemValue1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

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
