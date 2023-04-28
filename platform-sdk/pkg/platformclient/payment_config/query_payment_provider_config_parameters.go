// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// NewQueryPaymentProviderConfigParams creates a new QueryPaymentProviderConfigParams object
// with the default values initialized.
func NewQueryPaymentProviderConfigParams() *QueryPaymentProviderConfigParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentProviderConfigParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryPaymentProviderConfigParamsWithTimeout creates a new QueryPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryPaymentProviderConfigParamsWithTimeout(timeout time.Duration) *QueryPaymentProviderConfigParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentProviderConfigParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryPaymentProviderConfigParamsWithContext creates a new QueryPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryPaymentProviderConfigParamsWithContext(ctx context.Context) *QueryPaymentProviderConfigParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentProviderConfigParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryPaymentProviderConfigParamsWithHTTPClient creates a new QueryPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryPaymentProviderConfigParamsWithHTTPClient(client *http.Client) *QueryPaymentProviderConfigParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryPaymentProviderConfigParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryPaymentProviderConfigParams contains all the parameters to send to the API endpoint
for the query payment provider config operation typically these are written to a http.Request
*/
type QueryPaymentProviderConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Limit*/
	Limit *int32
	/*Namespace
	  namespace

	*/
	Namespace *string
	/*Offset*/
	Offset *int32
	/*Region
	  region

	*/
	Region *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithTimeout(timeout time.Duration) *QueryPaymentProviderConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithContext(ctx context.Context) *QueryPaymentProviderConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithHTTPClient(client *http.Client) *QueryPaymentProviderConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLimit adds the limit to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithLimit(limit *int32) *QueryPaymentProviderConfigParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithNamespace(namespace *string) *QueryPaymentProviderConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithOffset(offset *int32) *QueryPaymentProviderConfigParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithRegion adds the region to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) WithRegion(region *string) *QueryPaymentProviderConfigParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the query payment provider config params
func (o *QueryPaymentProviderConfigParams) SetRegion(region *string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *QueryPaymentProviderConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
				return err
			}
		}

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

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
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
