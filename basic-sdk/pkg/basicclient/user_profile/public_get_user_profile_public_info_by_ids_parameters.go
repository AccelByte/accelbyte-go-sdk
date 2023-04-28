// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// NewPublicGetUserProfilePublicInfoByIdsParams creates a new PublicGetUserProfilePublicInfoByIdsParams object
// with the default values initialized.
func NewPublicGetUserProfilePublicInfoByIdsParams() *PublicGetUserProfilePublicInfoByIdsParams {
	var ()
	return &PublicGetUserProfilePublicInfoByIdsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserProfilePublicInfoByIdsParamsWithTimeout creates a new PublicGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserProfilePublicInfoByIdsParamsWithTimeout(timeout time.Duration) *PublicGetUserProfilePublicInfoByIdsParams {
	var ()
	return &PublicGetUserProfilePublicInfoByIdsParams{

		timeout: timeout,
	}
}

// NewPublicGetUserProfilePublicInfoByIdsParamsWithContext creates a new PublicGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserProfilePublicInfoByIdsParamsWithContext(ctx context.Context) *PublicGetUserProfilePublicInfoByIdsParams {
	var ()
	return &PublicGetUserProfilePublicInfoByIdsParams{

		Context: ctx,
	}
}

// NewPublicGetUserProfilePublicInfoByIdsParamsWithHTTPClient creates a new PublicGetUserProfilePublicInfoByIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserProfilePublicInfoByIdsParamsWithHTTPClient(client *http.Client) *PublicGetUserProfilePublicInfoByIdsParams {
	var ()
	return &PublicGetUserProfilePublicInfoByIdsParams{
		HTTPClient: client,
	}
}

/*PublicGetUserProfilePublicInfoByIdsParams contains all the parameters to send to the API endpoint
for the public get user profile public info by ids operation typically these are written to a http.Request
*/
type PublicGetUserProfilePublicInfoByIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserIds
	  User IDs, should follow UUID version 4 without hyphen, separate the IDs using comma

	*/
	UserIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) WithTimeout(timeout time.Duration) *PublicGetUserProfilePublicInfoByIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) WithContext(ctx context.Context) *PublicGetUserProfilePublicInfoByIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) WithHTTPClient(client *http.Client) *PublicGetUserProfilePublicInfoByIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) WithNamespace(namespace string) *PublicGetUserProfilePublicInfoByIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserIds adds the userIds to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) WithUserIds(userIds string) *PublicGetUserProfilePublicInfoByIdsParams {
	o.SetUserIds(userIds)
	return o
}

// SetUserIds adds the userIds to the public get user profile public info by ids params
func (o *PublicGetUserProfilePublicInfoByIdsParams) SetUserIds(userIds string) {
	o.UserIds = userIds
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserProfilePublicInfoByIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param userIds
	qrUserIds := o.UserIds
	qUserIds := qrUserIds
	if qUserIds != "" {
		if err := r.SetQueryParam("userIds", qUserIds); err != nil {
			return err
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
