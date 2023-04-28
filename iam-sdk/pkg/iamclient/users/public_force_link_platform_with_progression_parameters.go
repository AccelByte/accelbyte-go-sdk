// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicForceLinkPlatformWithProgressionParams creates a new PublicForceLinkPlatformWithProgressionParams object
// with the default values initialized.
func NewPublicForceLinkPlatformWithProgressionParams() *PublicForceLinkPlatformWithProgressionParams {
	var ()
	return &PublicForceLinkPlatformWithProgressionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicForceLinkPlatformWithProgressionParamsWithTimeout creates a new PublicForceLinkPlatformWithProgressionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicForceLinkPlatformWithProgressionParamsWithTimeout(timeout time.Duration) *PublicForceLinkPlatformWithProgressionParams {
	var ()
	return &PublicForceLinkPlatformWithProgressionParams{

		timeout: timeout,
	}
}

// NewPublicForceLinkPlatformWithProgressionParamsWithContext creates a new PublicForceLinkPlatformWithProgressionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicForceLinkPlatformWithProgressionParamsWithContext(ctx context.Context) *PublicForceLinkPlatformWithProgressionParams {
	var ()
	return &PublicForceLinkPlatformWithProgressionParams{

		Context: ctx,
	}
}

// NewPublicForceLinkPlatformWithProgressionParamsWithHTTPClient creates a new PublicForceLinkPlatformWithProgressionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicForceLinkPlatformWithProgressionParamsWithHTTPClient(client *http.Client) *PublicForceLinkPlatformWithProgressionParams {
	var ()
	return &PublicForceLinkPlatformWithProgressionParams{
		HTTPClient: client,
	}
}

/*PublicForceLinkPlatformWithProgressionParams contains all the parameters to send to the API endpoint
for the public force link platform with progression operation typically these are written to a http.Request
*/
type PublicForceLinkPlatformWithProgressionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelLinkPlatformAccountWithProgressionRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  Current user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithTimeout(timeout time.Duration) *PublicForceLinkPlatformWithProgressionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithContext(ctx context.Context) *PublicForceLinkPlatformWithProgressionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithHTTPClient(client *http.Client) *PublicForceLinkPlatformWithProgressionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithBody(body *iamclientmodels.ModelLinkPlatformAccountWithProgressionRequest) *PublicForceLinkPlatformWithProgressionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetBody(body *iamclientmodels.ModelLinkPlatformAccountWithProgressionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithNamespace(namespace string) *PublicForceLinkPlatformWithProgressionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) WithUserID(userID string) *PublicForceLinkPlatformWithProgressionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public force link platform with progression params
func (o *PublicForceLinkPlatformWithProgressionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicForceLinkPlatformWithProgressionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
