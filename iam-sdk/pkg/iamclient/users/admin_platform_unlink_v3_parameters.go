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

// NewAdminPlatformUnlinkV3Params creates a new AdminPlatformUnlinkV3Params object
// with the default values initialized.
func NewAdminPlatformUnlinkV3Params() *AdminPlatformUnlinkV3Params {
	var ()
	return &AdminPlatformUnlinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPlatformUnlinkV3ParamsWithTimeout creates a new AdminPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPlatformUnlinkV3ParamsWithTimeout(timeout time.Duration) *AdminPlatformUnlinkV3Params {
	var ()
	return &AdminPlatformUnlinkV3Params{

		timeout: timeout,
	}
}

// NewAdminPlatformUnlinkV3ParamsWithContext creates a new AdminPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPlatformUnlinkV3ParamsWithContext(ctx context.Context) *AdminPlatformUnlinkV3Params {
	var ()
	return &AdminPlatformUnlinkV3Params{

		Context: ctx,
	}
}

// NewAdminPlatformUnlinkV3ParamsWithHTTPClient creates a new AdminPlatformUnlinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPlatformUnlinkV3ParamsWithHTTPClient(client *http.Client) *AdminPlatformUnlinkV3Params {
	var ()
	return &AdminPlatformUnlinkV3Params{
		HTTPClient: client,
	}
}

/*AdminPlatformUnlinkV3Params contains all the parameters to send to the API endpoint
for the admin platform unlink v3 operation typically these are written to a http.Request
*/
type AdminPlatformUnlinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUnlinkUserPlatformRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithTimeout(timeout time.Duration) *AdminPlatformUnlinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithContext(ctx context.Context) *AdminPlatformUnlinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithHTTPClient(client *http.Client) *AdminPlatformUnlinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithBody(body *iamclientmodels.ModelUnlinkUserPlatformRequest) *AdminPlatformUnlinkV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetBody(body *iamclientmodels.ModelUnlinkUserPlatformRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithNamespace(namespace string) *AdminPlatformUnlinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithPlatformID(platformID string) *AdminPlatformUnlinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) WithUserID(userID string) *AdminPlatformUnlinkV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin platform unlink v3 params
func (o *AdminPlatformUnlinkV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPlatformUnlinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
