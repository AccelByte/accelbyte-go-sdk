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

// NewPlatformUnlinkParams creates a new PlatformUnlinkParams object
// with the default values initialized.
func NewPlatformUnlinkParams() *PlatformUnlinkParams {
	var ()
	return &PlatformUnlinkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformUnlinkParamsWithTimeout creates a new PlatformUnlinkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformUnlinkParamsWithTimeout(timeout time.Duration) *PlatformUnlinkParams {
	var ()
	return &PlatformUnlinkParams{

		timeout: timeout,
	}
}

// NewPlatformUnlinkParamsWithContext creates a new PlatformUnlinkParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformUnlinkParamsWithContext(ctx context.Context) *PlatformUnlinkParams {
	var ()
	return &PlatformUnlinkParams{

		Context: ctx,
	}
}

// NewPlatformUnlinkParamsWithHTTPClient creates a new PlatformUnlinkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformUnlinkParamsWithHTTPClient(client *http.Client) *PlatformUnlinkParams {
	var ()
	return &PlatformUnlinkParams{
		HTTPClient: client,
	}
}

/*PlatformUnlinkParams contains all the parameters to send to the API endpoint
for the platform unlink operation typically these are written to a http.Request
*/
type PlatformUnlinkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformNamespace
	  Namespace of the platform account to be unlinked

	*/
	PlatformNamespace *string
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the platform unlink params
func (o *PlatformUnlinkParams) WithTimeout(timeout time.Duration) *PlatformUnlinkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform unlink params
func (o *PlatformUnlinkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform unlink params
func (o *PlatformUnlinkParams) WithContext(ctx context.Context) *PlatformUnlinkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform unlink params
func (o *PlatformUnlinkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform unlink params
func (o *PlatformUnlinkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform unlink params
func (o *PlatformUnlinkParams) WithHTTPClient(client *http.Client) *PlatformUnlinkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform unlink params
func (o *PlatformUnlinkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform unlink params
func (o *PlatformUnlinkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithPlatformNamespace adds the platformNamespace to the platform unlink params
func (o *PlatformUnlinkParams) WithPlatformNamespace(platformNamespace *string) *PlatformUnlinkParams {
	o.SetPlatformNamespace(platformNamespace)
	return o
}

// SetPlatformNamespace adds the platformNamespace to the platform unlink params
func (o *PlatformUnlinkParams) SetPlatformNamespace(platformNamespace *string) {
	o.PlatformNamespace = platformNamespace
}

// WithNamespace adds the namespace to the platform unlink params
func (o *PlatformUnlinkParams) WithNamespace(namespace string) *PlatformUnlinkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the platform unlink params
func (o *PlatformUnlinkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the platform unlink params
func (o *PlatformUnlinkParams) WithPlatformID(platformID string) *PlatformUnlinkParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform unlink params
func (o *PlatformUnlinkParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the platform unlink params
func (o *PlatformUnlinkParams) WithUserID(userID string) *PlatformUnlinkParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the platform unlink params
func (o *PlatformUnlinkParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformUnlinkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
