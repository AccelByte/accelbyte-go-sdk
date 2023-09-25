// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewSyncNativeFriendsParams creates a new SyncNativeFriendsParams object
// with the default values initialized.
func NewSyncNativeFriendsParams() *SyncNativeFriendsParams {
	var ()
	return &SyncNativeFriendsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncNativeFriendsParamsWithTimeout creates a new SyncNativeFriendsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncNativeFriendsParamsWithTimeout(timeout time.Duration) *SyncNativeFriendsParams {
	var ()
	return &SyncNativeFriendsParams{

		timeout: timeout,
	}
}

// NewSyncNativeFriendsParamsWithContext creates a new SyncNativeFriendsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncNativeFriendsParamsWithContext(ctx context.Context) *SyncNativeFriendsParams {
	var ()
	return &SyncNativeFriendsParams{

		Context: ctx,
	}
}

// NewSyncNativeFriendsParamsWithHTTPClient creates a new SyncNativeFriendsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncNativeFriendsParamsWithHTTPClient(client *http.Client) *SyncNativeFriendsParams {
	var ()
	return &SyncNativeFriendsParams{
		HTTPClient: client,
	}
}

/*SyncNativeFriendsParams contains all the parameters to send to the API endpoint
for the sync native friends operation typically these are written to a http.Request
*/
type SyncNativeFriendsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*lobbyclientmodels.ModelNativeFriendRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the sync native friends params
func (o *SyncNativeFriendsParams) WithTimeout(timeout time.Duration) *SyncNativeFriendsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync native friends params
func (o *SyncNativeFriendsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync native friends params
func (o *SyncNativeFriendsParams) WithContext(ctx context.Context) *SyncNativeFriendsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync native friends params
func (o *SyncNativeFriendsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync native friends params
func (o *SyncNativeFriendsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync native friends params
func (o *SyncNativeFriendsParams) WithHTTPClient(client *http.Client) *SyncNativeFriendsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync native friends params
func (o *SyncNativeFriendsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync native friends params
func (o *SyncNativeFriendsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the sync native friends params
func (o *SyncNativeFriendsParams) WithBody(body []*lobbyclientmodels.ModelNativeFriendRequest) *SyncNativeFriendsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync native friends params
func (o *SyncNativeFriendsParams) SetBody(body []*lobbyclientmodels.ModelNativeFriendRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync native friends params
func (o *SyncNativeFriendsParams) WithNamespace(namespace string) *SyncNativeFriendsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync native friends params
func (o *SyncNativeFriendsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SyncNativeFriendsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
