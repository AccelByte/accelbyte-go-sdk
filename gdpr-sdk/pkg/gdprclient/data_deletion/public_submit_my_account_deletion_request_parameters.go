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

// NewPublicSubmitMyAccountDeletionRequestParams creates a new PublicSubmitMyAccountDeletionRequestParams object
// with the default values initialized.
func NewPublicSubmitMyAccountDeletionRequestParams() *PublicSubmitMyAccountDeletionRequestParams {
	var ()
	return &PublicSubmitMyAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSubmitMyAccountDeletionRequestParamsWithTimeout creates a new PublicSubmitMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSubmitMyAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *PublicSubmitMyAccountDeletionRequestParams {
	var ()
	return &PublicSubmitMyAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewPublicSubmitMyAccountDeletionRequestParamsWithContext creates a new PublicSubmitMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSubmitMyAccountDeletionRequestParamsWithContext(ctx context.Context) *PublicSubmitMyAccountDeletionRequestParams {
	var ()
	return &PublicSubmitMyAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewPublicSubmitMyAccountDeletionRequestParamsWithHTTPClient creates a new PublicSubmitMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSubmitMyAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *PublicSubmitMyAccountDeletionRequestParams {
	var ()
	return &PublicSubmitMyAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*PublicSubmitMyAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the public submit my account deletion request operation typically these are written to a http.Request
*/
type PublicSubmitMyAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Platform ID which used to generate current token

	*/
	PlatformID string
	/*PlatformToken
	  Platform token of current logged platform

	*/
	PlatformToken string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *PublicSubmitMyAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) WithContext(ctx context.Context) *PublicSubmitMyAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *PublicSubmitMyAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPlatformID adds the platformID to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) WithPlatformID(platformID string) *PublicSubmitMyAccountDeletionRequestParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformToken adds the platformToken to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) WithPlatformToken(platformToken string) *PublicSubmitMyAccountDeletionRequestParams {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the public submit my account deletion request params
func (o *PublicSubmitMyAccountDeletionRequestParams) SetPlatformToken(platformToken string) {
	o.PlatformToken = platformToken
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSubmitMyAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param platformId
	frPlatformID := o.PlatformID
	fPlatformID := frPlatformID
	if fPlatformID != "" {
		if err := r.SetFormParam("platformId", fPlatformID); err != nil {
			return err
		}
	}

	// form param platformToken
	frPlatformToken := o.PlatformToken
	fPlatformToken := frPlatformToken
	if fPlatformToken != "" {
		if err := r.SetFormParam("platformToken", fPlatformToken); err != nil {
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
