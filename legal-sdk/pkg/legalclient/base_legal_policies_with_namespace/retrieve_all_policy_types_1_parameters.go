// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrieveAllPolicyTypes1Params creates a new RetrieveAllPolicyTypes1Params object
// with the default values initialized.
func NewRetrieveAllPolicyTypes1Params() *RetrieveAllPolicyTypes1Params {
	var ()
	return &RetrieveAllPolicyTypes1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveAllPolicyTypes1ParamsWithTimeout creates a new RetrieveAllPolicyTypes1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveAllPolicyTypes1ParamsWithTimeout(timeout time.Duration) *RetrieveAllPolicyTypes1Params {
	var ()
	return &RetrieveAllPolicyTypes1Params{

		timeout: timeout,
	}
}

// NewRetrieveAllPolicyTypes1ParamsWithContext creates a new RetrieveAllPolicyTypes1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveAllPolicyTypes1ParamsWithContext(ctx context.Context) *RetrieveAllPolicyTypes1Params {
	var ()
	return &RetrieveAllPolicyTypes1Params{

		Context: ctx,
	}
}

// NewRetrieveAllPolicyTypes1ParamsWithHTTPClient creates a new RetrieveAllPolicyTypes1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveAllPolicyTypes1ParamsWithHTTPClient(client *http.Client) *RetrieveAllPolicyTypes1Params {
	var ()
	return &RetrieveAllPolicyTypes1Params{
		HTTPClient: client,
	}
}

/*RetrieveAllPolicyTypes1Params contains all the parameters to send to the API endpoint
for the retrieve all policy types 1 operation typically these are written to a http.Request
*/
type RetrieveAllPolicyTypes1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Offset
	  Offset

	*/
	Offset *int32
	/*Limit
	  Limit

	*/
	Limit int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithTimeout(timeout time.Duration) *RetrieveAllPolicyTypes1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithContext(ctx context.Context) *RetrieveAllPolicyTypes1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithHTTPClient(client *http.Client) *RetrieveAllPolicyTypes1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveAllPolicyTypes1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithNamespace(namespace string) *RetrieveAllPolicyTypes1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithOffset(offset *int32) *RetrieveAllPolicyTypes1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithLimit adds the limit to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) WithLimit(limit int32) *RetrieveAllPolicyTypes1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve all policy types 1 params
func (o *RetrieveAllPolicyTypes1Params) SetLimit(limit int32) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveAllPolicyTypes1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param limit
	qrLimit := o.Limit
	qLimit := swag.FormatInt32(qrLimit)
	if qLimit != "" {
		if err := r.SetQueryParam("limit", qLimit); err != nil {
			return err
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
