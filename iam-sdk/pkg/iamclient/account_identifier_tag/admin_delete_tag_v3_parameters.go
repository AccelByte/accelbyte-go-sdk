// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account_identifier_tag

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

// NewAdminDeleteTagV3Params creates a new AdminDeleteTagV3Params object
// with the default values initialized.
func NewAdminDeleteTagV3Params() *AdminDeleteTagV3Params {
	var ()
	return &AdminDeleteTagV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteTagV3ParamsWithTimeout creates a new AdminDeleteTagV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteTagV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteTagV3Params {
	var ()
	return &AdminDeleteTagV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteTagV3ParamsWithContext creates a new AdminDeleteTagV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteTagV3ParamsWithContext(ctx context.Context) *AdminDeleteTagV3Params {
	var ()
	return &AdminDeleteTagV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteTagV3ParamsWithHTTPClient creates a new AdminDeleteTagV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteTagV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteTagV3Params {
	var ()
	return &AdminDeleteTagV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteTagV3Params contains all the parameters to send to the API endpoint
for the admin delete tag v3 operation typically these are written to a http.Request
*/
type AdminDeleteTagV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TagID
	  Tag ID, should follow UUID version 4 without hyphen

	*/
	TagID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) WithTimeout(timeout time.Duration) *AdminDeleteTagV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) WithContext(ctx context.Context) *AdminDeleteTagV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) WithHTTPClient(client *http.Client) *AdminDeleteTagV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteTagV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) WithNamespace(namespace string) *AdminDeleteTagV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTagID adds the tagID to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) WithTagID(tagID string) *AdminDeleteTagV3Params {
	o.SetTagID(tagID)
	return o
}

// SetTagID adds the tagId to the admin delete tag v3 params
func (o *AdminDeleteTagV3Params) SetTagID(tagID string) {
	o.TagID = tagID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteTagV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param tagId
	if err := r.SetPathParam("tagId", o.TagID); err != nil {
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
