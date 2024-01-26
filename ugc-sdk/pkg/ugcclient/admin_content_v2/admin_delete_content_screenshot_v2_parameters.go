// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminDeleteContentScreenshotV2Params creates a new AdminDeleteContentScreenshotV2Params object
// with the default values initialized.
func NewAdminDeleteContentScreenshotV2Params() *AdminDeleteContentScreenshotV2Params {
	var ()
	return &AdminDeleteContentScreenshotV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteContentScreenshotV2ParamsWithTimeout creates a new AdminDeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteContentScreenshotV2ParamsWithTimeout(timeout time.Duration) *AdminDeleteContentScreenshotV2Params {
	var ()
	return &AdminDeleteContentScreenshotV2Params{

		timeout: timeout,
	}
}

// NewAdminDeleteContentScreenshotV2ParamsWithContext creates a new AdminDeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteContentScreenshotV2ParamsWithContext(ctx context.Context) *AdminDeleteContentScreenshotV2Params {
	var ()
	return &AdminDeleteContentScreenshotV2Params{

		Context: ctx,
	}
}

// NewAdminDeleteContentScreenshotV2ParamsWithHTTPClient creates a new AdminDeleteContentScreenshotV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteContentScreenshotV2ParamsWithHTTPClient(client *http.Client) *AdminDeleteContentScreenshotV2Params {
	var ()
	return &AdminDeleteContentScreenshotV2Params{
		HTTPClient: client,
	}
}

/*AdminDeleteContentScreenshotV2Params contains all the parameters to send to the API endpoint
for the admin delete content screenshot v2 operation typically these are written to a http.Request
*/
type AdminDeleteContentScreenshotV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ScreenshotID
	  screenshot ID

	*/
	ScreenshotID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithTimeout(timeout time.Duration) *AdminDeleteContentScreenshotV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithContext(ctx context.Context) *AdminDeleteContentScreenshotV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithHTTPClient(client *http.Client) *AdminDeleteContentScreenshotV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteContentScreenshotV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithContentID(contentID string) *AdminDeleteContentScreenshotV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithNamespace(namespace string) *AdminDeleteContentScreenshotV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithScreenshotID adds the screenshotID to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) WithScreenshotID(screenshotID string) *AdminDeleteContentScreenshotV2Params {
	o.SetScreenshotID(screenshotID)
	return o
}

// SetScreenshotID adds the screenshotId to the admin delete content screenshot v2 params
func (o *AdminDeleteContentScreenshotV2Params) SetScreenshotID(screenshotID string) {
	o.ScreenshotID = screenshotID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteContentScreenshotV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param screenshotId
	if err := r.SetPathParam("screenshotId", o.ScreenshotID); err != nil {
		return err
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
