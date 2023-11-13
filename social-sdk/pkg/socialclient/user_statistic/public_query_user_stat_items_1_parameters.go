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
	"github.com/go-openapi/swag"
)

// NewPublicQueryUserStatItems1Params creates a new PublicQueryUserStatItems1Params object
// with the default values initialized.
func NewPublicQueryUserStatItems1Params() *PublicQueryUserStatItems1Params {
	var ()
	return &PublicQueryUserStatItems1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryUserStatItems1ParamsWithTimeout creates a new PublicQueryUserStatItems1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryUserStatItems1ParamsWithTimeout(timeout time.Duration) *PublicQueryUserStatItems1Params {
	var ()
	return &PublicQueryUserStatItems1Params{

		timeout: timeout,
	}
}

// NewPublicQueryUserStatItems1ParamsWithContext creates a new PublicQueryUserStatItems1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryUserStatItems1ParamsWithContext(ctx context.Context) *PublicQueryUserStatItems1Params {
	var ()
	return &PublicQueryUserStatItems1Params{

		Context: ctx,
	}
}

// NewPublicQueryUserStatItems1ParamsWithHTTPClient creates a new PublicQueryUserStatItems1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryUserStatItems1ParamsWithHTTPClient(client *http.Client) *PublicQueryUserStatItems1Params {
	var ()
	return &PublicQueryUserStatItems1Params{
		HTTPClient: client,
	}
}

/*PublicQueryUserStatItems1Params contains all the parameters to send to the API endpoint
for the public query user stat items 1 operation typically these are written to a http.Request
*/
type PublicQueryUserStatItems1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string
	/*StatCodes
	  stat codes

	*/
	StatCodes []string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithTimeout(timeout time.Duration) *PublicQueryUserStatItems1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithContext(ctx context.Context) *PublicQueryUserStatItems1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithHTTPClient(client *http.Client) *PublicQueryUserStatItems1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithNamespace(namespace string) *PublicQueryUserStatItems1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithUserID(userID string) *PublicQueryUserStatItems1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithAdditionalKey(additionalKey *string) *PublicQueryUserStatItems1Params {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WithStatCodes adds the statCodes to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithStatCodes(statCodes []string) *PublicQueryUserStatItems1Params {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetStatCodes(statCodes []string) {
	o.StatCodes = statCodes
}

// WithTags adds the tags to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) WithTags(tags []string) *PublicQueryUserStatItems1Params {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public query user stat items 1 params
func (o *PublicQueryUserStatItems1Params) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryUserStatItems1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	valuesStatCodes := o.StatCodes

	joinedStatCodes := swag.JoinByFormat(valuesStatCodes, "multi")
	// query array param statCodes
	if err := r.SetQueryParam("statCodes", joinedStatCodes...); err != nil {
		return err
	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
