// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// NewPublicQueryMyPartiesParams creates a new PublicQueryMyPartiesParams object
// with the default values initialized.
func NewPublicQueryMyPartiesParams() *PublicQueryMyPartiesParams {
	var ()
	return &PublicQueryMyPartiesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryMyPartiesParamsWithTimeout creates a new PublicQueryMyPartiesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryMyPartiesParamsWithTimeout(timeout time.Duration) *PublicQueryMyPartiesParams {
	var ()
	return &PublicQueryMyPartiesParams{

		timeout: timeout,
	}
}

// NewPublicQueryMyPartiesParamsWithContext creates a new PublicQueryMyPartiesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryMyPartiesParamsWithContext(ctx context.Context) *PublicQueryMyPartiesParams {
	var ()
	return &PublicQueryMyPartiesParams{

		Context: ctx,
	}
}

// NewPublicQueryMyPartiesParamsWithHTTPClient creates a new PublicQueryMyPartiesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryMyPartiesParamsWithHTTPClient(client *http.Client) *PublicQueryMyPartiesParams {
	var ()
	return &PublicQueryMyPartiesParams{
		HTTPClient: client,
	}
}

/*PublicQueryMyPartiesParams contains all the parameters to send to the API endpoint
for the public query my parties operation typically these are written to a http.Request
*/
type PublicQueryMyPartiesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: createdAt (default), updatedAt

	*/
	OrderBy *string
	/*Status
	  user status to filter. supported status: INVITED,JOINED,CONNECTED,DISCONNECT

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithTimeout(timeout time.Duration) *PublicQueryMyPartiesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithContext(ctx context.Context) *PublicQueryMyPartiesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithHTTPClient(client *http.Client) *PublicQueryMyPartiesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithNamespace(namespace string) *PublicQueryMyPartiesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrder adds the order to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithOrder(order *string) *PublicQueryMyPartiesParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithOrderBy(orderBy *string) *PublicQueryMyPartiesParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithStatus adds the status to the public query my parties params
func (o *PublicQueryMyPartiesParams) WithStatus(status *string) *PublicQueryMyPartiesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public query my parties params
func (o *PublicQueryMyPartiesParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryMyPartiesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
