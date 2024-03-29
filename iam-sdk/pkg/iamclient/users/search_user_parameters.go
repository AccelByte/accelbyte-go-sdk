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

// NewSearchUserParams creates a new SearchUserParams object
// with the default values initialized.
func NewSearchUserParams() *SearchUserParams {
	var ()
	return &SearchUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSearchUserParamsWithTimeout creates a new SearchUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSearchUserParamsWithTimeout(timeout time.Duration) *SearchUserParams {
	var ()
	return &SearchUserParams{

		timeout: timeout,
	}
}

// NewSearchUserParamsWithContext creates a new SearchUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewSearchUserParamsWithContext(ctx context.Context) *SearchUserParams {
	var ()
	return &SearchUserParams{

		Context: ctx,
	}
}

// NewSearchUserParamsWithHTTPClient creates a new SearchUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSearchUserParamsWithHTTPClient(client *http.Client) *SearchUserParams {
	var ()
	return &SearchUserParams{
		HTTPClient: client,
	}
}

/*SearchUserParams contains all the parameters to send to the API endpoint
for the search user operation typically these are written to a http.Request
*/
type SearchUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Query
	  search query string (optional)

	*/
	Query *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the search user params
func (o *SearchUserParams) WithTimeout(timeout time.Duration) *SearchUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the search user params
func (o *SearchUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the search user params
func (o *SearchUserParams) WithContext(ctx context.Context) *SearchUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the search user params
func (o *SearchUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the search user params
func (o *SearchUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the search user params
func (o *SearchUserParams) WithHTTPClient(client *http.Client) *SearchUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the search user params
func (o *SearchUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the search user params
func (o *SearchUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SearchUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the search user params
func (o *SearchUserParams) WithNamespace(namespace string) *SearchUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the search user params
func (o *SearchUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithQuery adds the query to the search user params
func (o *SearchUserParams) WithQuery(query *string) *SearchUserParams {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the search user params
func (o *SearchUserParams) SetQuery(query *string) {
	o.Query = query
}

// WriteToRequest writes these params to a swagger request
func (o *SearchUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
