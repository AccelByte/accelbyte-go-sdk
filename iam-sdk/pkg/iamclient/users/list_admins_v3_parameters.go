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
	"github.com/go-openapi/swag"
)

// NewListAdminsV3Params creates a new ListAdminsV3Params object
// with the default values initialized.
func NewListAdminsV3Params() *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewListAdminsV3ParamsWithTimeout creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListAdminsV3ParamsWithTimeout(timeout time.Duration) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		timeout: timeout,
	}
}

// NewListAdminsV3ParamsWithContext creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewListAdminsV3ParamsWithContext(ctx context.Context) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{

		Context: ctx,
	}
}

// NewListAdminsV3ParamsWithHTTPClient creates a new ListAdminsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListAdminsV3ParamsWithHTTPClient(client *http.Client) *ListAdminsV3Params {
	var ()
	return &ListAdminsV3Params{
		HTTPClient: client,
	}
}

/*ListAdminsV3Params contains all the parameters to send to the API endpoint
for the list admins v3 operation typically these are written to a http.Request
*/
type ListAdminsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*After
	  The cursor that points to query data for the next page. Composite values consist of created_at and id, the value is base64 encoded

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page. Composite values consist of created_at and id, the value is base64 encoded

	*/
	Before *string
	/*Limit
	  The maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list admins v3 params
func (o *ListAdminsV3Params) WithTimeout(timeout time.Duration) *ListAdminsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list admins v3 params
func (o *ListAdminsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list admins v3 params
func (o *ListAdminsV3Params) WithContext(ctx context.Context) *ListAdminsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list admins v3 params
func (o *ListAdminsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list admins v3 params
func (o *ListAdminsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list admins v3 params
func (o *ListAdminsV3Params) WithHTTPClient(client *http.Client) *ListAdminsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list admins v3 params
func (o *ListAdminsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list admins v3 params
func (o *ListAdminsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the list admins v3 params
func (o *ListAdminsV3Params) WithNamespace(namespace string) *ListAdminsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list admins v3 params
func (o *ListAdminsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAfter adds the after to the list admins v3 params
func (o *ListAdminsV3Params) WithAfter(after *string) *ListAdminsV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the list admins v3 params
func (o *ListAdminsV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the list admins v3 params
func (o *ListAdminsV3Params) WithBefore(before *string) *ListAdminsV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the list admins v3 params
func (o *ListAdminsV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the list admins v3 params
func (o *ListAdminsV3Params) WithLimit(limit *int64) *ListAdminsV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list admins v3 params
func (o *ListAdminsV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *ListAdminsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
