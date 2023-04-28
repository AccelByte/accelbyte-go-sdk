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

// NewPublicGetUserProfileInfoByPublicIDParams creates a new PublicGetUserProfileInfoByPublicIDParams object
// with the default values initialized.
func NewPublicGetUserProfileInfoByPublicIDParams() *PublicGetUserProfileInfoByPublicIDParams {
	var ()
	return &PublicGetUserProfileInfoByPublicIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserProfileInfoByPublicIDParamsWithTimeout creates a new PublicGetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserProfileInfoByPublicIDParamsWithTimeout(timeout time.Duration) *PublicGetUserProfileInfoByPublicIDParams {
	var ()
	return &PublicGetUserProfileInfoByPublicIDParams{

		timeout: timeout,
	}
}

// NewPublicGetUserProfileInfoByPublicIDParamsWithContext creates a new PublicGetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserProfileInfoByPublicIDParamsWithContext(ctx context.Context) *PublicGetUserProfileInfoByPublicIDParams {
	var ()
	return &PublicGetUserProfileInfoByPublicIDParams{

		Context: ctx,
	}
}

// NewPublicGetUserProfileInfoByPublicIDParamsWithHTTPClient creates a new PublicGetUserProfileInfoByPublicIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserProfileInfoByPublicIDParamsWithHTTPClient(client *http.Client) *PublicGetUserProfileInfoByPublicIDParams {
	var ()
	return &PublicGetUserProfileInfoByPublicIDParams{
		HTTPClient: client,
	}
}

/*PublicGetUserProfileInfoByPublicIDParams contains all the parameters to send to the API endpoint
for the public get user profile info by public id operation typically these are written to a http.Request
*/
type PublicGetUserProfileInfoByPublicIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PublicID
	  user public id

	*/
	PublicID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) WithTimeout(timeout time.Duration) *PublicGetUserProfileInfoByPublicIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) WithContext(ctx context.Context) *PublicGetUserProfileInfoByPublicIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) WithHTTPClient(client *http.Client) *PublicGetUserProfileInfoByPublicIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) WithNamespace(namespace string) *PublicGetUserProfileInfoByPublicIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPublicID adds the publicID to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) WithPublicID(publicID string) *PublicGetUserProfileInfoByPublicIDParams {
	o.SetPublicID(publicID)
	return o
}

// SetPublicID adds the publicId to the public get user profile info by public id params
func (o *PublicGetUserProfileInfoByPublicIDParams) SetPublicID(publicID string) {
	o.PublicID = publicID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserProfileInfoByPublicIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param publicId
	qrPublicID := o.PublicID
	qPublicID := qrPublicID
	if qPublicID != "" {
		if err := r.SetQueryParam("publicId", qPublicID); err != nil {
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
