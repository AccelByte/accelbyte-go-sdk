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

// NewAdminListUserIDByPlatformUserIDsV3Params creates a new AdminListUserIDByPlatformUserIDsV3Params object
// with the default values initialized.
func NewAdminListUserIDByPlatformUserIDsV3Params() *AdminListUserIDByPlatformUserIDsV3Params {
	var (
		rawPIdDefault  = bool(false)
		rawPUidDefault = bool(false)
	)
	return &AdminListUserIDByPlatformUserIDsV3Params{
		RawPID:  &rawPIdDefault,
		RawPUID: &rawPUidDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUserIDByPlatformUserIDsV3ParamsWithTimeout creates a new AdminListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUserIDByPlatformUserIDsV3ParamsWithTimeout(timeout time.Duration) *AdminListUserIDByPlatformUserIDsV3Params {
	var (
		rawPIdDefault  = bool(false)
		rawPUidDefault = bool(false)
	)
	return &AdminListUserIDByPlatformUserIDsV3Params{
		RawPID:  &rawPIdDefault,
		RawPUID: &rawPUidDefault,

		timeout: timeout,
	}
}

// NewAdminListUserIDByPlatformUserIDsV3ParamsWithContext creates a new AdminListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUserIDByPlatformUserIDsV3ParamsWithContext(ctx context.Context) *AdminListUserIDByPlatformUserIDsV3Params {
	var (
		rawPIdDefault  = bool(false)
		rawPUidDefault = bool(false)
	)
	return &AdminListUserIDByPlatformUserIDsV3Params{
		RawPID:  &rawPIdDefault,
		RawPUID: &rawPUidDefault,

		Context: ctx,
	}
}

// NewAdminListUserIDByPlatformUserIDsV3ParamsWithHTTPClient creates a new AdminListUserIDByPlatformUserIDsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUserIDByPlatformUserIDsV3ParamsWithHTTPClient(client *http.Client) *AdminListUserIDByPlatformUserIDsV3Params {
	var (
		rawPIdDefault  = bool(false)
		rawPUidDefault = bool(false)
	)
	return &AdminListUserIDByPlatformUserIDsV3Params{
		RawPID:     &rawPIdDefault,
		RawPUID:    &rawPUidDefault,
		HTTPClient: client,
	}
}

/*AdminListUserIDByPlatformUserIDsV3Params contains all the parameters to send to the API endpoint
for the admin list user id by platform user i ds v3 operation typically these are written to a http.Request
*/
type AdminListUserIDByPlatformUserIDsV3Params struct {

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
	/*RawPID
	  if this is true, the platform user id in response will be raw id, if it is false, some platform user id will be encrypted, eg: xbox; Note: this field is deprecated, please use: rawPUID

	*/
	RawPID *bool
	/*RawPUID
	  if this is true, the platform user id in response will be raw id, if it is false, some platform user id will be encrypted, eg: xbox

	*/
	RawPUID *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithTimeout(timeout time.Duration) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithContext(ctx context.Context) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithHTTPClient(client *http.Client) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithBody(body *iamclientmodels.ModelPlatformUserIDRequest) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetBody(body *iamclientmodels.ModelPlatformUserIDRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithNamespace(namespace string) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithPlatformID(platformID string) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithRawPID adds the rawPID to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithRawPID(rawPID *bool) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetRawPID(rawPID)
	return o
}

// SetRawPID adds the rawPId to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetRawPID(rawPID *bool) {
	o.RawPID = rawPID
}

// WithRawPUID adds the rawPUID to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) WithRawPUID(rawPUID *bool) *AdminListUserIDByPlatformUserIDsV3Params {
	o.SetRawPUID(rawPUID)
	return o
}

// SetRawPUID adds the rawPUid to the admin list user id by platform user i ds v3 params
func (o *AdminListUserIDByPlatformUserIDsV3Params) SetRawPUID(rawPUID *bool) {
	o.RawPUID = rawPUID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUserIDByPlatformUserIDsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.RawPID != nil {

		// query param rawPID
		var qrRawPID bool
		if o.RawPID != nil {
			qrRawPID = *o.RawPID
		}
		qRawPID := swag.FormatBool(qrRawPID)
		if qRawPID != "" {
			if err := r.SetQueryParam("rawPID", qRawPID); err != nil {
				return err
			}
		}

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
