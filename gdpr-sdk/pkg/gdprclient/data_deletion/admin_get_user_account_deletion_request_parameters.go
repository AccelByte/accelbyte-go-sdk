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

// NewAdminGetUserAccountDeletionRequestParams creates a new AdminGetUserAccountDeletionRequestParams object
// with the default values initialized.
func NewAdminGetUserAccountDeletionRequestParams() *AdminGetUserAccountDeletionRequestParams {
	var ()
	return &AdminGetUserAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserAccountDeletionRequestParamsWithTimeout creates a new AdminGetUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *AdminGetUserAccountDeletionRequestParams {
	var ()
	return &AdminGetUserAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewAdminGetUserAccountDeletionRequestParamsWithContext creates a new AdminGetUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserAccountDeletionRequestParamsWithContext(ctx context.Context) *AdminGetUserAccountDeletionRequestParams {
	var ()
	return &AdminGetUserAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewAdminGetUserAccountDeletionRequestParamsWithHTTPClient creates a new AdminGetUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *AdminGetUserAccountDeletionRequestParams {
	var ()
	return &AdminGetUserAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*AdminGetUserAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the admin get user account deletion request operation typically these are written to a http.Request
*/
type AdminGetUserAccountDeletionRequestParams struct {

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

// WithTimeout adds the timeout to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *AdminGetUserAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) WithContext(ctx context.Context) *AdminGetUserAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *AdminGetUserAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) WithNamespace(namespace string) *AdminGetUserAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) WithUserID(userID string) *AdminGetUserAccountDeletionRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user account deletion request params
func (o *AdminGetUserAccountDeletionRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
