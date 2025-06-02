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
	"github.com/go-openapi/swag"
)

// NewAdminQueryTagV3Params creates a new AdminQueryTagV3Params object
// with the default values initialized.
func NewAdminQueryTagV3Params() *AdminQueryTagV3Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTagV3Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryTagV3ParamsWithTimeout creates a new AdminQueryTagV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryTagV3ParamsWithTimeout(timeout time.Duration) *AdminQueryTagV3Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTagV3Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryTagV3ParamsWithContext creates a new AdminQueryTagV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryTagV3ParamsWithContext(ctx context.Context) *AdminQueryTagV3Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTagV3Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryTagV3ParamsWithHTTPClient creates a new AdminQueryTagV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryTagV3ParamsWithHTTPClient(client *http.Client) *AdminQueryTagV3Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryTagV3Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryTagV3Params contains all the parameters to send to the API endpoint
for the admin query tag v3 operation typically these are written to a http.Request
*/
type AdminQueryTagV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100), default 100

	*/
	Limit *int64
	/*Offset
	  Offset, default 0

	*/
	Offset *int64
	/*TagName
	  Tag Name

	*/
	TagName *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithTimeout(timeout time.Duration) *AdminQueryTagV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithContext(ctx context.Context) *AdminQueryTagV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithHTTPClient(client *http.Client) *AdminQueryTagV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryTagV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithNamespace(namespace string) *AdminQueryTagV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithLimit(limit *int64) *AdminQueryTagV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithOffset(offset *int64) *AdminQueryTagV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTagName adds the tagName to the admin query tag v3 params
func (o *AdminQueryTagV3Params) WithTagName(tagName *string) *AdminQueryTagV3Params {
	o.SetTagName(tagName)
	return o
}

// SetTagName adds the tagName to the admin query tag v3 params
func (o *AdminQueryTagV3Params) SetTagName(tagName *string) {
	o.TagName = tagName
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryTagV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.TagName != nil {

		// query param tagName
		var qrTagName string
		if o.TagName != nil {
			qrTagName = *o.TagName
		}
		qTagName := qrTagName
		if qTagName != "" {
			if err := r.SetQueryParam("tagName", qTagName); err != nil {
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
