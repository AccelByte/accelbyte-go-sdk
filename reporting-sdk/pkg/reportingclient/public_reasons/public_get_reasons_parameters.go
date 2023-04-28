// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_reasons

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

// NewPublicGetReasonsParams creates a new PublicGetReasonsParams object
// with the default values initialized.
func NewPublicGetReasonsParams() *PublicGetReasonsParams {
	var ()
	return &PublicGetReasonsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetReasonsParamsWithTimeout creates a new PublicGetReasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetReasonsParamsWithTimeout(timeout time.Duration) *PublicGetReasonsParams {
	var ()
	return &PublicGetReasonsParams{

		timeout: timeout,
	}
}

// NewPublicGetReasonsParamsWithContext creates a new PublicGetReasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetReasonsParamsWithContext(ctx context.Context) *PublicGetReasonsParams {
	var ()
	return &PublicGetReasonsParams{

		Context: ctx,
	}
}

// NewPublicGetReasonsParamsWithHTTPClient creates a new PublicGetReasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetReasonsParamsWithHTTPClient(client *http.Client) *PublicGetReasonsParams {
	var ()
	return &PublicGetReasonsParams{
		HTTPClient: client,
	}
}

/*PublicGetReasonsParams contains all the parameters to send to the API endpoint
for the public get reasons operation typically these are written to a http.Request
*/
type PublicGetReasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Group
	  query reasons under specified reason group

	*/
	Group *string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64
	/*Title
	  query reason(s) by title

	*/
	Title *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get reasons params
func (o *PublicGetReasonsParams) WithTimeout(timeout time.Duration) *PublicGetReasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get reasons params
func (o *PublicGetReasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get reasons params
func (o *PublicGetReasonsParams) WithContext(ctx context.Context) *PublicGetReasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get reasons params
func (o *PublicGetReasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get reasons params
func (o *PublicGetReasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get reasons params
func (o *PublicGetReasonsParams) WithHTTPClient(client *http.Client) *PublicGetReasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get reasons params
func (o *PublicGetReasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get reasons params
func (o *PublicGetReasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get reasons params
func (o *PublicGetReasonsParams) WithNamespace(namespace string) *PublicGetReasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get reasons params
func (o *PublicGetReasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGroup adds the group to the public get reasons params
func (o *PublicGetReasonsParams) WithGroup(group *string) *PublicGetReasonsParams {
	o.SetGroup(group)
	return o
}

// SetGroup adds the group to the public get reasons params
func (o *PublicGetReasonsParams) SetGroup(group *string) {
	o.Group = group
}

// WithLimit adds the limit to the public get reasons params
func (o *PublicGetReasonsParams) WithLimit(limit *int64) *PublicGetReasonsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get reasons params
func (o *PublicGetReasonsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get reasons params
func (o *PublicGetReasonsParams) WithOffset(offset *int64) *PublicGetReasonsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get reasons params
func (o *PublicGetReasonsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTitle adds the title to the public get reasons params
func (o *PublicGetReasonsParams) WithTitle(title *string) *PublicGetReasonsParams {
	o.SetTitle(title)
	return o
}

// SetTitle adds the title to the public get reasons params
func (o *PublicGetReasonsParams) SetTitle(title *string) {
	o.Title = title
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetReasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Group != nil {

		// query param group
		var qrGroup string
		if o.Group != nil {
			qrGroup = *o.Group
		}
		qGroup := qrGroup
		if qGroup != "" {
			if err := r.SetQueryParam("group", qGroup); err != nil {
				return err
			}
		}

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

	if o.Title != nil {

		// query param title
		var qrTitle string
		if o.Title != nil {
			qrTitle = *o.Title
		}
		qTitle := qrTitle
		if qTitle != "" {
			if err := r.SetQueryParam("title", qTitle); err != nil {
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
