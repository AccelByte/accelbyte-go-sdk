// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewPublicSearchUserV3Params creates a new PublicSearchUserV3Params object
// with the default values initialized.
func NewPublicSearchUserV3Params() *PublicSearchUserV3Params {
	var ()
	return &PublicSearchUserV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSearchUserV3ParamsWithTimeout creates a new PublicSearchUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSearchUserV3ParamsWithTimeout(timeout time.Duration) *PublicSearchUserV3Params {
	var ()
	return &PublicSearchUserV3Params{

		timeout: timeout,
	}
}

// NewPublicSearchUserV3ParamsWithContext creates a new PublicSearchUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSearchUserV3ParamsWithContext(ctx context.Context) *PublicSearchUserV3Params {
	var ()
	return &PublicSearchUserV3Params{

		Context: ctx,
	}
}

// NewPublicSearchUserV3ParamsWithHTTPClient creates a new PublicSearchUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSearchUserV3ParamsWithHTTPClient(client *http.Client) *PublicSearchUserV3Params {
	var ()
	return &PublicSearchUserV3Params{
		HTTPClient: client,
	}
}

/*PublicSearchUserV3Params contains all the parameters to send to the API endpoint
for the public search user v3 operation typically these are written to a http.Request
*/
type PublicSearchUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*By
	  Search by given attribute, possible values are displayName and username

	*/
	By *string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Query
	  Query, can be either display name or username

	*/
	Query *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public search user v3 params
func (o *PublicSearchUserV3Params) WithTimeout(timeout time.Duration) *PublicSearchUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public search user v3 params
func (o *PublicSearchUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public search user v3 params
func (o *PublicSearchUserV3Params) WithContext(ctx context.Context) *PublicSearchUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public search user v3 params
func (o *PublicSearchUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public search user v3 params
func (o *PublicSearchUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public search user v3 params
func (o *PublicSearchUserV3Params) WithHTTPClient(client *http.Client) *PublicSearchUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public search user v3 params
func (o *PublicSearchUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public search user v3 params
func (o *PublicSearchUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBy adds the by to the public search user v3 params
func (o *PublicSearchUserV3Params) WithBy(by *string) *PublicSearchUserV3Params {
	o.SetBy(by)
	return o
}

// SetBy adds the by to the public search user v3 params
func (o *PublicSearchUserV3Params) SetBy(by *string) {
	o.By = by
}

// WithNamespace adds the namespace to the public search user v3 params
func (o *PublicSearchUserV3Params) WithNamespace(namespace string) *PublicSearchUserV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public search user v3 params
func (o *PublicSearchUserV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithQuery adds the query to the public search user v3 params
func (o *PublicSearchUserV3Params) WithQuery(query *string) *PublicSearchUserV3Params {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the public search user v3 params
func (o *PublicSearchUserV3Params) SetQuery(query *string) {
	o.Query = query
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSearchUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.By != nil {

		// query param by
		var qrBy string
		if o.By != nil {
			qrBy = *o.By
		}
		qBy := qrBy
		if qBy != "" {
			if err := r.SetQueryParam("by", qBy); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Query != nil {

		// query param query
		var qrQuery string
		if o.Query != nil {
			qrQuery = *o.Query
		}
		qQuery := qrQuery
		if qQuery != "" {
			if err := r.SetQueryParam("query", qQuery); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
