// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_member

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

// NewGetUserGroupInformationPublicV2Params creates a new GetUserGroupInformationPublicV2Params object
// with the default values initialized.
func NewGetUserGroupInformationPublicV2Params() *GetUserGroupInformationPublicV2Params {
	var ()
	return &GetUserGroupInformationPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserGroupInformationPublicV2ParamsWithTimeout creates a new GetUserGroupInformationPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserGroupInformationPublicV2ParamsWithTimeout(timeout time.Duration) *GetUserGroupInformationPublicV2Params {
	var ()
	return &GetUserGroupInformationPublicV2Params{

		timeout: timeout,
	}
}

// NewGetUserGroupInformationPublicV2ParamsWithContext creates a new GetUserGroupInformationPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserGroupInformationPublicV2ParamsWithContext(ctx context.Context) *GetUserGroupInformationPublicV2Params {
	var ()
	return &GetUserGroupInformationPublicV2Params{

		Context: ctx,
	}
}

// NewGetUserGroupInformationPublicV2ParamsWithHTTPClient creates a new GetUserGroupInformationPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserGroupInformationPublicV2ParamsWithHTTPClient(client *http.Client) *GetUserGroupInformationPublicV2Params {
	var ()
	return &GetUserGroupInformationPublicV2Params{
		HTTPClient: client,
	}
}

/*GetUserGroupInformationPublicV2Params contains all the parameters to send to the API endpoint
for the get user group information public v2 operation typically these are written to a http.Request
*/
type GetUserGroupInformationPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithTimeout(timeout time.Duration) *GetUserGroupInformationPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithContext(ctx context.Context) *GetUserGroupInformationPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithHTTPClient(client *http.Client) *GetUserGroupInformationPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserGroupInformationPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithNamespace(namespace string) *GetUserGroupInformationPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithLimit(limit *int64) *GetUserGroupInformationPublicV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) WithOffset(offset *int64) *GetUserGroupInformationPublicV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user group information public v2 params
func (o *GetUserGroupInformationPublicV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserGroupInformationPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
