// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion

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

// NewPublicGetUserAccountDeletionStatusParams creates a new PublicGetUserAccountDeletionStatusParams object
// with the default values initialized.
func NewPublicGetUserAccountDeletionStatusParams() *PublicGetUserAccountDeletionStatusParams {
	var ()
	return &PublicGetUserAccountDeletionStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserAccountDeletionStatusParamsWithTimeout creates a new PublicGetUserAccountDeletionStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserAccountDeletionStatusParamsWithTimeout(timeout time.Duration) *PublicGetUserAccountDeletionStatusParams {
	var ()
	return &PublicGetUserAccountDeletionStatusParams{

		timeout: timeout,
	}
}

// NewPublicGetUserAccountDeletionStatusParamsWithContext creates a new PublicGetUserAccountDeletionStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserAccountDeletionStatusParamsWithContext(ctx context.Context) *PublicGetUserAccountDeletionStatusParams {
	var ()
	return &PublicGetUserAccountDeletionStatusParams{

		Context: ctx,
	}
}

// NewPublicGetUserAccountDeletionStatusParamsWithHTTPClient creates a new PublicGetUserAccountDeletionStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserAccountDeletionStatusParamsWithHTTPClient(client *http.Client) *PublicGetUserAccountDeletionStatusParams {
	var ()
	return &PublicGetUserAccountDeletionStatusParams{
		HTTPClient: client,
	}
}

/*PublicGetUserAccountDeletionStatusParams contains all the parameters to send to the API endpoint
for the public get user account deletion status operation typically these are written to a http.Request
*/
type PublicGetUserAccountDeletionStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*UserID
	  IAM ID of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) WithTimeout(timeout time.Duration) *PublicGetUserAccountDeletionStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) WithContext(ctx context.Context) *PublicGetUserAccountDeletionStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) WithHTTPClient(client *http.Client) *PublicGetUserAccountDeletionStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) WithNamespace(namespace string) *PublicGetUserAccountDeletionStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) WithUserID(userID string) *PublicGetUserAccountDeletionStatusParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user account deletion status params
func (o *PublicGetUserAccountDeletionStatusParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserAccountDeletionStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
