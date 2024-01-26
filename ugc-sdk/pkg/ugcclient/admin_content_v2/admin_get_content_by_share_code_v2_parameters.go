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

// NewAdminGetContentByShareCodeV2Params creates a new AdminGetContentByShareCodeV2Params object
// with the default values initialized.
func NewAdminGetContentByShareCodeV2Params() *AdminGetContentByShareCodeV2Params {
	var ()
	return &AdminGetContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetContentByShareCodeV2ParamsWithTimeout creates a new AdminGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *AdminGetContentByShareCodeV2Params {
	var ()
	return &AdminGetContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewAdminGetContentByShareCodeV2ParamsWithContext creates a new AdminGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetContentByShareCodeV2ParamsWithContext(ctx context.Context) *AdminGetContentByShareCodeV2Params {
	var ()
	return &AdminGetContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewAdminGetContentByShareCodeV2ParamsWithHTTPClient creates a new AdminGetContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *AdminGetContentByShareCodeV2Params {
	var ()
	return &AdminGetContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*AdminGetContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the admin get content by share code v2 operation typically these are written to a http.Request
*/
type AdminGetContentByShareCodeV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  content sharecode

	*/
	ShareCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *AdminGetContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) WithContext(ctx context.Context) *AdminGetContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *AdminGetContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetContentByShareCodeV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) WithNamespace(namespace string) *AdminGetContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) WithShareCode(shareCode string) *AdminGetContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the admin get content by share code v2 params
func (o *AdminGetContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
