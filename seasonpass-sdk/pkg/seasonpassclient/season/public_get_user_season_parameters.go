// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewPublicGetUserSeasonParams creates a new PublicGetUserSeasonParams object
// with the default values initialized.
func NewPublicGetUserSeasonParams() *PublicGetUserSeasonParams {
	var ()
	return &PublicGetUserSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserSeasonParamsWithTimeout creates a new PublicGetUserSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserSeasonParamsWithTimeout(timeout time.Duration) *PublicGetUserSeasonParams {
	var ()
	return &PublicGetUserSeasonParams{

		timeout: timeout,
	}
}

// NewPublicGetUserSeasonParamsWithContext creates a new PublicGetUserSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserSeasonParamsWithContext(ctx context.Context) *PublicGetUserSeasonParams {
	var ()
	return &PublicGetUserSeasonParams{

		Context: ctx,
	}
}

// NewPublicGetUserSeasonParamsWithHTTPClient creates a new PublicGetUserSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserSeasonParamsWithHTTPClient(client *http.Client) *PublicGetUserSeasonParams {
	var ()
	return &PublicGetUserSeasonParams{
		HTTPClient: client,
	}
}

/*PublicGetUserSeasonParams contains all the parameters to send to the API endpoint
for the public get user season operation typically these are written to a http.Request
*/
type PublicGetUserSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user season params
func (o *PublicGetUserSeasonParams) WithTimeout(timeout time.Duration) *PublicGetUserSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user season params
func (o *PublicGetUserSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user season params
func (o *PublicGetUserSeasonParams) WithContext(ctx context.Context) *PublicGetUserSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user season params
func (o *PublicGetUserSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user season params
func (o *PublicGetUserSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user season params
func (o *PublicGetUserSeasonParams) WithHTTPClient(client *http.Client) *PublicGetUserSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user season params
func (o *PublicGetUserSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user season params
func (o *PublicGetUserSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user season params
func (o *PublicGetUserSeasonParams) WithNamespace(namespace string) *PublicGetUserSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user season params
func (o *PublicGetUserSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the public get user season params
func (o *PublicGetUserSeasonParams) WithSeasonID(seasonID string) *PublicGetUserSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the public get user season params
func (o *PublicGetUserSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WithUserID adds the userID to the public get user season params
func (o *PublicGetUserSeasonParams) WithUserID(userID string) *PublicGetUserSeasonParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user season params
func (o *PublicGetUserSeasonParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
