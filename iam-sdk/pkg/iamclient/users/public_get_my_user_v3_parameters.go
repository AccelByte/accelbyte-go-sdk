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
	"github.com/go-openapi/swag"
)

// NewPublicGetMyUserV3Params creates a new PublicGetMyUserV3Params object
// with the default values initialized.
func NewPublicGetMyUserV3Params() *PublicGetMyUserV3Params {
	var (
		includeAllPlatformsDefault = bool(false)
	)
	return &PublicGetMyUserV3Params{
		IncludeAllPlatforms: &includeAllPlatformsDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyUserV3ParamsWithTimeout creates a new PublicGetMyUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyUserV3ParamsWithTimeout(timeout time.Duration) *PublicGetMyUserV3Params {
	var (
		includeAllPlatformsDefault = bool(false)
	)
	return &PublicGetMyUserV3Params{
		IncludeAllPlatforms: &includeAllPlatformsDefault,

		timeout: timeout,
	}
}

// NewPublicGetMyUserV3ParamsWithContext creates a new PublicGetMyUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyUserV3ParamsWithContext(ctx context.Context) *PublicGetMyUserV3Params {
	var (
		includeAllPlatformsDefault = bool(false)
	)
	return &PublicGetMyUserV3Params{
		IncludeAllPlatforms: &includeAllPlatformsDefault,

		Context: ctx,
	}
}

// NewPublicGetMyUserV3ParamsWithHTTPClient creates a new PublicGetMyUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyUserV3ParamsWithHTTPClient(client *http.Client) *PublicGetMyUserV3Params {
	var (
		includeAllPlatformsDefault = bool(false)
	)
	return &PublicGetMyUserV3Params{
		IncludeAllPlatforms: &includeAllPlatformsDefault,
		HTTPClient:          client,
	}
}

/*PublicGetMyUserV3Params contains all the parameters to send to the API endpoint
for the public get my user v3 operation typically these are written to a http.Request
*/
type PublicGetMyUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*IncludeAllPlatforms
	  include all linked platform infos

	*/
	IncludeAllPlatforms *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get my user v3 params
func (o *PublicGetMyUserV3Params) WithTimeout(timeout time.Duration) *PublicGetMyUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my user v3 params
func (o *PublicGetMyUserV3Params) WithContext(ctx context.Context) *PublicGetMyUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my user v3 params
func (o *PublicGetMyUserV3Params) WithHTTPClient(client *http.Client) *PublicGetMyUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithIncludeAllPlatforms adds the includeAllPlatforms to the public get my user v3 params
func (o *PublicGetMyUserV3Params) WithIncludeAllPlatforms(includeAllPlatforms *bool) *PublicGetMyUserV3Params {
	o.SetIncludeAllPlatforms(includeAllPlatforms)
	return o
}

// SetIncludeAllPlatforms adds the includeAllPlatforms to the public get my user v3 params
func (o *PublicGetMyUserV3Params) SetIncludeAllPlatforms(includeAllPlatforms *bool) {
	o.IncludeAllPlatforms = includeAllPlatforms
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.IncludeAllPlatforms != nil {

		// query param includeAllPlatforms
		var qrIncludeAllPlatforms bool
		if o.IncludeAllPlatforms != nil {
			qrIncludeAllPlatforms = *o.IncludeAllPlatforms
		}
		qIncludeAllPlatforms := swag.FormatBool(qrIncludeAllPlatforms)
		if qIncludeAllPlatforms != "" {
			if err := r.SetQueryParam("includeAllPlatforms", qIncludeAllPlatforms); err != nil {
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
