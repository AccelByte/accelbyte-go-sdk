// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewRevokeUserV3Params creates a new RevokeUserV3Params object
// with the default values initialized.
func NewRevokeUserV3Params() *RevokeUserV3Params {
	var (
		includeGameNamespaceDefault = bool(false)
	)
	return &RevokeUserV3Params{
		IncludeGameNamespace: &includeGameNamespaceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeUserV3ParamsWithTimeout creates a new RevokeUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeUserV3ParamsWithTimeout(timeout time.Duration) *RevokeUserV3Params {
	var (
		includeGameNamespaceDefault = bool(false)
	)
	return &RevokeUserV3Params{
		IncludeGameNamespace: &includeGameNamespaceDefault,

		timeout: timeout,
	}
}

// NewRevokeUserV3ParamsWithContext creates a new RevokeUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeUserV3ParamsWithContext(ctx context.Context) *RevokeUserV3Params {
	var (
		includeGameNamespaceDefault = bool(false)
	)
	return &RevokeUserV3Params{
		IncludeGameNamespace: &includeGameNamespaceDefault,

		Context: ctx,
	}
}

// NewRevokeUserV3ParamsWithHTTPClient creates a new RevokeUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeUserV3ParamsWithHTTPClient(client *http.Client) *RevokeUserV3Params {
	var (
		includeGameNamespaceDefault = bool(false)
	)
	return &RevokeUserV3Params{
		IncludeGameNamespace: &includeGameNamespaceDefault,
		HTTPClient:           client,
	}
}

/*RevokeUserV3Params contains all the parameters to send to the API endpoint
for the revoke user v3 operation typically these are written to a http.Request
*/
type RevokeUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User to be revoked

	*/
	UserID string
	/*IncludeGameNamespace
	  <p>This queryParameter only works when utilizing userID and namespace publisher.</p> <p>If true, the system will revoke all game account under the publisher account.</p>

	*/
	IncludeGameNamespace *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the revoke user v3 params
func (o *RevokeUserV3Params) WithTimeout(timeout time.Duration) *RevokeUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke user v3 params
func (o *RevokeUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke user v3 params
func (o *RevokeUserV3Params) WithContext(ctx context.Context) *RevokeUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke user v3 params
func (o *RevokeUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke user v3 params
func (o *RevokeUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke user v3 params
func (o *RevokeUserV3Params) WithHTTPClient(client *http.Client) *RevokeUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke user v3 params
func (o *RevokeUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke user v3 params
func (o *RevokeUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the revoke user v3 params
func (o *RevokeUserV3Params) WithNamespace(namespace string) *RevokeUserV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke user v3 params
func (o *RevokeUserV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke user v3 params
func (o *RevokeUserV3Params) WithUserID(userID string) *RevokeUserV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke user v3 params
func (o *RevokeUserV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithIncludeGameNamespace adds the includeGameNamespace to the revoke user v3 params
func (o *RevokeUserV3Params) WithIncludeGameNamespace(includeGameNamespace *bool) *RevokeUserV3Params {
	o.SetIncludeGameNamespace(includeGameNamespace)
	return o
}

// SetIncludeGameNamespace adds the includeGameNamespace to the revoke user v3 params
func (o *RevokeUserV3Params) SetIncludeGameNamespace(includeGameNamespace *bool) {
	o.IncludeGameNamespace = includeGameNamespace
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.IncludeGameNamespace != nil {

		// query param includeGameNamespace
		var qrIncludeGameNamespace bool
		if o.IncludeGameNamespace != nil {
			qrIncludeGameNamespace = *o.IncludeGameNamespace
		}
		qIncludeGameNamespace := swag.FormatBool(qrIncludeGameNamespace)
		if qIncludeGameNamespace != "" {
			if err := r.SetQueryParam("includeGameNamespace", qIncludeGameNamespace); err != nil {
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
