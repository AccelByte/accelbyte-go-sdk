// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewGetSlugTemplateParams creates a new GetSlugTemplateParams object
// with the default values initialized.
func NewGetSlugTemplateParams() *GetSlugTemplateParams {
	var ()
	return &GetSlugTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSlugTemplateParamsWithTimeout creates a new GetSlugTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSlugTemplateParamsWithTimeout(timeout time.Duration) *GetSlugTemplateParams {
	var ()
	return &GetSlugTemplateParams{

		timeout: timeout,
	}
}

// NewGetSlugTemplateParamsWithContext creates a new GetSlugTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSlugTemplateParamsWithContext(ctx context.Context) *GetSlugTemplateParams {
	var ()
	return &GetSlugTemplateParams{

		Context: ctx,
	}
}

// NewGetSlugTemplateParamsWithHTTPClient creates a new GetSlugTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSlugTemplateParamsWithHTTPClient(client *http.Client) *GetSlugTemplateParams {
	var ()
	return &GetSlugTemplateParams{
		HTTPClient: client,
	}
}

/*GetSlugTemplateParams contains all the parameters to send to the API endpoint
for the get slug template operation typically these are written to a http.Request
*/
type GetSlugTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TemplateSlug
	  template slug

	*/
	TemplateSlug string
	/*After
	  last language code of previous page

	*/
	After *string
	/*Before
	  first language code of next page

	*/
	Before *string
	/*Limit
	  size of displayed data

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get slug template params
func (o *GetSlugTemplateParams) WithTimeout(timeout time.Duration) *GetSlugTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get slug template params
func (o *GetSlugTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get slug template params
func (o *GetSlugTemplateParams) WithContext(ctx context.Context) *GetSlugTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get slug template params
func (o *GetSlugTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get slug template params
func (o *GetSlugTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get slug template params
func (o *GetSlugTemplateParams) WithHTTPClient(client *http.Client) *GetSlugTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get slug template params
func (o *GetSlugTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get slug template params
func (o *GetSlugTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSlugTemplateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get slug template params
func (o *GetSlugTemplateParams) WithNamespace(namespace string) *GetSlugTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get slug template params
func (o *GetSlugTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTemplateSlug adds the templateSlug to the get slug template params
func (o *GetSlugTemplateParams) WithTemplateSlug(templateSlug string) *GetSlugTemplateParams {
	o.SetTemplateSlug(templateSlug)
	return o
}

// SetTemplateSlug adds the templateSlug to the get slug template params
func (o *GetSlugTemplateParams) SetTemplateSlug(templateSlug string) {
	o.TemplateSlug = templateSlug
}

// WithAfter adds the after to the get slug template params
func (o *GetSlugTemplateParams) WithAfter(after *string) *GetSlugTemplateParams {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get slug template params
func (o *GetSlugTemplateParams) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the get slug template params
func (o *GetSlugTemplateParams) WithBefore(before *string) *GetSlugTemplateParams {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get slug template params
func (o *GetSlugTemplateParams) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the get slug template params
func (o *GetSlugTemplateParams) WithLimit(limit *int64) *GetSlugTemplateParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get slug template params
func (o *GetSlugTemplateParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *GetSlugTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param templateSlug
	if err := r.SetPathParam("templateSlug", o.TemplateSlug); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
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
