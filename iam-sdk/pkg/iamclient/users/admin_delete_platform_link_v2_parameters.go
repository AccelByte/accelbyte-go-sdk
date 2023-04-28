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
)

// NewAdminDeletePlatformLinkV2Params creates a new AdminDeletePlatformLinkV2Params object
// with the default values initialized.
func NewAdminDeletePlatformLinkV2Params() *AdminDeletePlatformLinkV2Params {
	var ()
	return &AdminDeletePlatformLinkV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeletePlatformLinkV2ParamsWithTimeout creates a new AdminDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeletePlatformLinkV2ParamsWithTimeout(timeout time.Duration) *AdminDeletePlatformLinkV2Params {
	var ()
	return &AdminDeletePlatformLinkV2Params{

		timeout: timeout,
	}
}

// NewAdminDeletePlatformLinkV2ParamsWithContext creates a new AdminDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeletePlatformLinkV2ParamsWithContext(ctx context.Context) *AdminDeletePlatformLinkV2Params {
	var ()
	return &AdminDeletePlatformLinkV2Params{

		Context: ctx,
	}
}

// NewAdminDeletePlatformLinkV2ParamsWithHTTPClient creates a new AdminDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeletePlatformLinkV2ParamsWithHTTPClient(client *http.Client) *AdminDeletePlatformLinkV2Params {
	var ()
	return &AdminDeletePlatformLinkV2Params{
		HTTPClient: client,
	}
}

/*AdminDeletePlatformLinkV2Params contains all the parameters to send to the API endpoint
for the admin delete platform link v2 operation typically these are written to a http.Request
*/
type AdminDeletePlatformLinkV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformNamespace
	  Namespace of the platform account to be deleted

	*/
	PlatformNamespace *string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithTimeout(timeout time.Duration) *AdminDeletePlatformLinkV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithContext(ctx context.Context) *AdminDeletePlatformLinkV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithHTTPClient(client *http.Client) *AdminDeletePlatformLinkV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPlatformNamespace adds the platformNamespace to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithPlatformNamespace(platformNamespace *string) *AdminDeletePlatformLinkV2Params {
	o.SetPlatformNamespace(platformNamespace)
	return o
}

// SetPlatformNamespace adds the platformNamespace to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetPlatformNamespace(platformNamespace *string) {
	o.PlatformNamespace = platformNamespace
}

// WithNamespace adds the namespace to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithNamespace(namespace string) *AdminDeletePlatformLinkV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithPlatformID(platformID string) *AdminDeletePlatformLinkV2Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) WithUserID(userID string) *AdminDeletePlatformLinkV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete platform link v2 params
func (o *AdminDeletePlatformLinkV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeletePlatformLinkV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.PlatformNamespace != nil {

		// form param platform_namespace
		var frPlatformNamespace string
		if o.PlatformNamespace != nil {
			frPlatformNamespace = *o.PlatformNamespace
		}
		fPlatformNamespace := frPlatformNamespace
		if fPlatformNamespace != "" {
			if err := r.SetFormParam("platform_namespace", fPlatformNamespace); err != nil {
				return err
			}
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
