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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicListUserIDByPlatformUserIDsV3Params creates a new PublicListUserIDByPlatformUserIDsV3Params object
// with the default values initialized.
func NewPublicListUserIDByPlatformUserIDsV3Params() *PublicListUserIDByPlatformUserIDsV3Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV3Params{
		RawPUID: &rawPUidDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListUserIDByPlatformUserIDsV3ParamsWithTimeout creates a new PublicListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListUserIDByPlatformUserIDsV3ParamsWithTimeout(timeout time.Duration) *PublicListUserIDByPlatformUserIDsV3Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV3Params{
		RawPUID: &rawPUidDefault,

		timeout: timeout,
	}
}

// NewPublicListUserIDByPlatformUserIDsV3ParamsWithContext creates a new PublicListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListUserIDByPlatformUserIDsV3ParamsWithContext(ctx context.Context) *PublicListUserIDByPlatformUserIDsV3Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV3Params{
		RawPUID: &rawPUidDefault,

		Context: ctx,
	}
}

// NewPublicListUserIDByPlatformUserIDsV3ParamsWithHTTPClient creates a new PublicListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListUserIDByPlatformUserIDsV3ParamsWithHTTPClient(client *http.Client) *PublicListUserIDByPlatformUserIDsV3Params {
	var (
		rawPUidDefault = bool(false)
	)
	return &PublicListUserIDByPlatformUserIDsV3Params{
		RawPUID:    &rawPUidDefault,
		HTTPClient: client,
	}
}

/*PublicListUserIDByPlatformUserIDsV3Params contains all the parameters to send to the API endpoint
for the public list user id by platform user i ds v3 operation typically these are written to a http.Request
*/
type PublicListUserIDByPlatformUserIDsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelPlatformUserIDRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*RawPUID
	  if this is true, the platform user id in response will be raw id, if it is false, some platform user id will be encrypted, eg: xbox

	*/
	RawPUID *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithTimeout(timeout time.Duration) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithContext(ctx context.Context) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithHTTPClient(client *http.Client) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithBody(body *iamclientmodels.ModelPlatformUserIDRequest) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetBody(body *iamclientmodels.ModelPlatformUserIDRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithNamespace(namespace string) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithPlatformID(platformID string) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithRawPUID adds the rawPUID to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) WithRawPUID(rawPUID *bool) *PublicListUserIDByPlatformUserIDsV3Params {
	o.SetRawPUID(rawPUID)
	return o
}

// SetRawPUID adds the rawPUid to the public list user id by platform user i ds v3 params
func (o *PublicListUserIDByPlatformUserIDsV3Params) SetRawPUID(rawPUID *bool) {
	o.RawPUID = rawPUID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListUserIDByPlatformUserIDsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.RawPUID != nil {

		// query param rawPUID
		var qrRawPUID bool
		if o.RawPUID != nil {
			qrRawPUID = *o.RawPUID
		}
		qRawPUID := swag.FormatBool(qrRawPUID)
		if qRawPUID != "" {
			if err := r.SetQueryParam("rawPUID", qRawPUID); err != nil {
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
